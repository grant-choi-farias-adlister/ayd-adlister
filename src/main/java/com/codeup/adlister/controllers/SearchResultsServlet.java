package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name="SearchResultsServlet", urlPatterns = "/searchResults")
public class SearchResultsServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Check if user is logged in
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login"); // Redirect to login page if not logged in
            return;
        }

        String query = request.getParameter("query");
        List<Ad> ads = DaoFactory.getAdsDao().search(query);
        request.setAttribute("ads", ads);
        request.getRequestDispatcher("/WEB-INF/ads/searchResults.jsp").forward(request, response);
    }
}
//this connects to index jsp file.