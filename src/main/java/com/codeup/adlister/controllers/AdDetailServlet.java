package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "AdDetailServlet", urlPatterns = "/ads/detail")
public class AdDetailServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        long adId = Long.parseLong(req.getParameter("id"));

        Ad ad = DaoFactory.getAdsDao().findById(adId);
        if(ad != null) {
            req.setAttribute("ad", ad);
        }

        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("user");

        if (user != null) {
            req.setAttribute("user", user);
        }
        req.getRequestDispatcher("/WEB-INF/ads/adDetail.jsp").forward(req, resp);

    }
}


