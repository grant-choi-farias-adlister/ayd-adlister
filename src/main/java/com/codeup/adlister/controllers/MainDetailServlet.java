package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet (name = "MainDetailServlet", urlPatterns = "/ads/mainDetail")
public class MainDetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        long adId = Long.parseLong(req.getParameter("id"));

        Ad ad = DaoFactory.getAdsDao().findById(adId);
        if(ad != null) {
            req.setAttribute("ad", ad);
        }

        req.getRequestDispatcher("/WEB-INF/ads/mainDetail.jsp").forward(req, resp);

    }
}
