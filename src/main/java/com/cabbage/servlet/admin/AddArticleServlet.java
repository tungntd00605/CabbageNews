package com.cabbage.servlet.admin;

import com.cabbage.entity.Article;
import com.cabbage.entity.Category;
import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.blobstore.BlobstoreService;
import com.google.appengine.api.blobstore.BlobstoreServiceFactory;
import com.google.appengine.api.images.ImagesService;
import com.google.appengine.api.images.ImagesServiceFactory;
import com.google.appengine.api.images.ServingUrlOptions;
import com.googlecode.objectify.Key;
import com.googlecode.objectify.Ref;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

import static com.googlecode.objectify.ObjectifyService.ofy;

public class AddArticleServlet extends HttpServlet {
    private static final Logger LOGGER = Logger.getLogger(AddArticleServlet.class.getSimpleName());
    private BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();
    private ImagesService imagesService = ImagesServiceFactory.getImagesService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("categories", ofy().load().type(Category.class).list());
        req.getRequestDispatcher("/admin/article/article-form.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String thumbnail = "https://i0.wp.com/www.freezkart.com/wp-content/uploads/2018/08/cauliflowers.jpg?fit=500%2C500&ssl=1";
        if(blobstoreService.getUploads(req) != null && !blobstoreService.getUploads(req).isEmpty() ){
            Map<String, List<BlobKey>> blobs = blobstoreService.getUploads(req);
            List<BlobKey> blobKeys = blobs.get("thumbnail");
            if (blobKeys != null || !blobKeys.isEmpty()) {
                thumbnail = imagesService.getServingUrl(ServingUrlOptions.Builder.withBlobKey(new BlobKey(blobKeys.get(0).getKeyString()))
                                                        .secureUrl(true)
                                                        .imageSize(300)
                                                        .crop(true));
            }
        }
        String title = req.getParameter("title");
        String description = req.getParameter("description");
        String content = req.getParameter("content");
        String author = req.getParameter("author");
        String strCategoryId = req.getParameter("categoryId");
        long categoryId = 0;
        try {
            categoryId = Long.parseLong(strCategoryId);
        } catch (NumberFormatException ex) {
            LOGGER.warning("Can not parse categoryId.");
            LOGGER.warning(ex.getMessage());
        }
        Article article = Article.Builder.anArticle()
                .withTitle(title)
                .withDescription(description)
                .withContent(content)
                .withThumbnail(thumbnail)
                .withAuthor(author)
                .withCategory(Ref.create(Key.create(Category.class, categoryId)))
                .build();
        ofy().save().entity(article).now();
//        resp.getWriter().println("Okie");
        resp.sendRedirect("/admin/article/list");
    }
}
