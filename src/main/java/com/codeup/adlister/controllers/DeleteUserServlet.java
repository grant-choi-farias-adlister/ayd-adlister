package com.codeup.adlister.controllers;
import com.codeup.adlister.dao.DaoFactory;
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
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/user/DeleteUser.jsp").forward(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        // Retrieve the ID of the user to delete from the request parameters
        Object user;
        User loggedInUser = (User) request.getSession().getAttribute("user");
        // delete user
        DaoFactory.getUsersDao().delete(loggedInUser);
        request.getSession().removeAttribute("user");
        // Clear the session after deleting the user
        request.getSession().invalidate();
        // Redirect to the login page
        Object login;
        response.sendRedirect("/login");
    }
    }
