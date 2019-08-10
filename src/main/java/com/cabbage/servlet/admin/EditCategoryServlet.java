package com.cabbage.servlet.admin;

import com.cabbage.entity.Article;
import com.cabbage.entity.Category;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static com.googlecode.objectify.ObjectifyService.ofy;

public class EditCategoryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getParameter("id");
        req.setAttribute("categoryDetai", ofy().load().type(Category.class).id(Long.parseLong(req.getParameter("id"))).now());
        req.getRequestDispatcher("/admin/category/edit-category.jsp").forward(req,resp);
    }
}
