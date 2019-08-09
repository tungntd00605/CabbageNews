package com.cabbage.servlet.admin;

import com.cabbage.entity.Category;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static com.googlecode.objectify.ObjectifyService.ofy;

public class ListCategoryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("category", ofy().load().type(Category.class).list());
        req.getRequestDispatcher("/admin/category/list-category.jsp").forward(req,resp);
    }
}
