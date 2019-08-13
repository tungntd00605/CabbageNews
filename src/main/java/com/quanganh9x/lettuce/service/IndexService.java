package com.quanganh9x.lettuce.service;

import com.google.appengine.api.search.Document;
import com.google.appengine.api.search.Index;
import com.google.appengine.api.search.IndexSpec;
import com.google.appengine.api.search.PutException;
import com.google.appengine.api.search.Results;
import com.google.appengine.api.search.ScoredDocument;
import com.google.appengine.api.search.SearchServiceFactory;

public class IndexService {
    private String INDEX_NAME = "testhihi";
    public IndexService() {
    }
    /**
     * This method is used to add a Document to a particular Index
     * @param document This is the Document instance that needs to be added to the Index
     */
    public void indexDocument(Document document) {
        //Setup the Index
        IndexSpec indexSpec = IndexSpec.newBuilder().setName(INDEX_NAME).build();
        Index index = SearchServiceFactory.getSearchService().getIndex(indexSpec);

        try {
            //Put the Document in the Index. If the document is already existing, it will be overwritten
            index.put(document);
        } catch (PutException e) {
            e.printStackTrace();
        }
    }

    /**
     * This method is used to retrieve a particular Document from the Index
     * @param documentId This is the key field that uniquely identifies a document in the collection i.e. the Index. In our case
     * it is the user id
     * @return An instance of the Document object from the Index.
     */
    public Document retrieveDocument(String documentId) {
        //Setup the Index
        IndexSpec indexSpec = IndexSpec.newBuilder().setName(this.INDEX_NAME).build();
        Index index = SearchServiceFactory.getSearchService().getIndex(indexSpec);

        //Retrieve the Record from the Index
        return index.get(documentId);
    }

    /**
     * This method is used to retrieve a list of documents from the Index that match the Search Term.
     * @param searchText The search term to find matching documents. By default, if you do not use the Search Language Syntax,
     * it will retrieve all the records that contain a partial or full text match for all attributes of a document
     * @return A collection of Documents that were found
     */
    public Results<ScoredDocument> retrieveDocuments(String searchText) {
        //Setup the Index
        IndexSpec indexSpec = IndexSpec.newBuilder().setName(this.INDEX_NAME).build();
        Index index = SearchServiceFactory.getSearchService().getIndex(indexSpec);

        //Retrieve the Records from the Index
        return index.search(searchText);
    }

    /**
     * This method is used to delete a document from the Index
     * @param documentId This is the key field that uniquely identifies a document in the collection i.e. the Index. In our case
     * it is the user id
     */

    public void deleteDocumentFromIndex(String documentId) {
        //Setup the Index
        IndexSpec indexSpec = IndexSpec.newBuilder().setName(this.INDEX_NAME).build();
        Index index = SearchServiceFactory.getSearchService().getIndex(indexSpec);

        //Delete the Records from the Index
        index.delete(documentId);
    }

}