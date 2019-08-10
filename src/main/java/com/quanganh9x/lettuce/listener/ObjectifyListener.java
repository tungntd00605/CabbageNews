package com.quanganh9x.lettuce.listener;

import com.google.auth.oauth2.GoogleCredentials;
import com.google.cloud.datastore.DatastoreOptions;
import com.googlecode.objectify.ObjectifyFactory;
import com.googlecode.objectify.ObjectifyService;
import com.quanganh9x.lettuce.entity.Article;
import com.quanganh9x.lettuce.entity.Category;
import com.quanganh9x.lettuce.entity.CrawlerSource;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.io.IOException;
import java.io.InputStream;

public class ObjectifyListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        try (InputStream in = servletContextEvent.getServletContext().getResourceAsStream("/WEB-INF/CabbageNews.json")) {
            ObjectifyService.init(new ObjectifyFactory(
                    DatastoreOptions.newBuilder()
                            .setCredentials(GoogleCredentials.fromStream(in))
                            .build()
                            .getService()
            ));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {
    }
}
