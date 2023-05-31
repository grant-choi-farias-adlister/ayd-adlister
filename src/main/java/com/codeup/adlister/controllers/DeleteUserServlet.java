package com.codeup.adlister.controllers;
import com.codeup.adlister.models.User;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(name = "DeleteUserServlet", urlPatterns = "/deleteUser")
public class DeleteUserServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        // Retrieve the ID of the user to delete from the request parameters
        long userId = Long.parseLong(request.getParameter("userId"));

        // Create a User object with the ID
        User userToDelete = new User(userId);

        // Call the delete method to delete the user from the database
        User.delete(userToDelete);

        // Redirect or forward to a success page
        response.sendRedirect("success.jsp");
    }
}