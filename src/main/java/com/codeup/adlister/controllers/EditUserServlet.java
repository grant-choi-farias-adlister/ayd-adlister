package com.codeup.adlister.controllers;

import com.codeup.adlister.models.User;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(name = "EditUserServlet", urlPatterns = "/edituser")
public class EditUserServlet extends HttpServlet {
    // Assuming you have a Connection object named 'connection'
    private Connection connection;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/user/UserEditForm.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve the updated user details from the request parameters
        long userId = Long.parseLong(request.getParameter("userId"));
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Create a User object with the updated values
        User updatedUser = new User(userId, username, email, password);

        // Call the update method to update the user in the database
        User.update(updatedUser);

        // Redirect or forward to a success page
        response.sendRedirect("success.jsp");
    }
}
