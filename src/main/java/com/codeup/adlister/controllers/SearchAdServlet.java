package com.codeup.adlister.controllers;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "SearchAdServlet", urlPatterns = "/ads/search")

public class SearchAdServlet extends HttpServlet {
//    notes to self.
//    1. only the logged in user can search an ad
//    2. if a user is not logged in they should be redirected
//
@Override
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
    // Check if the user is logged in
    if (!userIsLoggedIn(request)) {
        // Redirect the user to the login page or any other appropriate page
        response.sendRedirect("/login");
        return;
    }

    // Get the search query from the request parameters
    String query = request.getParameter("query");

    // Perform search logic here

    // Forward the results to a JSP page for display
    request.getRequestDispatcher("/WEB-INF/search-results.jsp").forward(request, response);
}

    private boolean userIsLoggedIn(HttpServletRequest request) {
        // Add your logic here to determine if the user is logged in
        // You can check for session attributes, cookies, or any other mechanism you're using for authentication
        // Return true if the user is logged in, false otherwise
        // For now, let's assume the user is not logged in
        return false;
    }


}
