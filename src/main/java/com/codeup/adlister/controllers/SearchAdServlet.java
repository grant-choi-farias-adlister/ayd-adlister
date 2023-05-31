package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "SearchAdServlet", urlPatterns = "/ads/search")
public class SearchAdServlet extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
    }
}

//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
//        // Check if the user is logged in
//        if (!userIsLoggedIn(request)) {
//            // Redirect the user to the login page or any other appropriate page
//            response.sendRedirect("/login");
//            return;
//        }
//
//        // Get the search query from the request parameters
//        String query = request.getParameter("query");
//
//        // Perform search logic here
//
//        // Forward the results to a JSP page for display
//        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
//    }

//    private boolean userIsLoggedIn(HttpServletRequest request) throws IOException {
//        // Add your logic here to determine if the user is logged in
////        this was also done with create add, user has to be logged in to create an add
//
//            User loggedInUser = (User) request.getSession().getAttribute("user");
//            loggedInUser. /*the user is logged in now you want them to do what?*/
//
//            response.sendRedirect("/ads/search");
//   ;
//
//        // Return true if the user is logged in, false otherwise
//        return false;
//    }
//}

