package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;

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
        User loggedInUser = (User) request.getSession().getAttribute("user");
        // Retrieve the updated user details from the request parameters
        long userId = Long.parseLong(request.getParameter("userId"));
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String passwordConfirmation = request.getParameter("confirm_password");

        //validate input

        boolean inputHasErrors = username.isEmpty()
                || email.isEmpty()
                || password.isEmpty()
                || (! password.equals(passwordConfirmation));
        if (inputHasErrors) {
            response.sendRedirect("/register");
            return;
        }
// update user
        DaoFactory.getUsersDao().update(new User(loggedInUser.getId(), username, email, Password.hash(password)));
        response.sendRedirect("/profile");

        // Create a User object with the updated values
        User updatedUser = new User(userId, username, email, password);

        // Call the update method to update the user in the database
        User.update(updatedUser);

    }
}
