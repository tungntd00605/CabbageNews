package com.quanganh9x.marquee.servlet.admin;

import com.quanganh9x.marquee.entity.Category;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static com.googlecode.objectify.ObjectifyService.ofy;

public class AddCategoryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/admin/category/form.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String description = req.getParameter("description");
        ofy().save().entity(Category.Builder.aCategory()
                .withName(name)
                .withDescription(description)
                .withStatus(1)
                .build()).now();
        // Later change to request.getDispatcher => form page with success message
        resp.getWriter().println("Category created");
    }
}
