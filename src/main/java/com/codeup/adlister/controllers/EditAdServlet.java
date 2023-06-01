package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="EditServlet", urlPatterns = "/ads/edit")
public class EditAdServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String adId = req.getParameter("id");
        Ad ad = DaoFactory.getAdsDao().findById(Long.parseLong(adId));
        req.setAttribute("ad", ad);
        req.getRequestDispatcher("/WEB-INF/ads/edit.jsp").forward(req, resp);
    }
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String ad = req.getParameter("id");
        String title = req.getParameter("title");
        String description = req.getParameter("description");

        Ad ads = DaoFactory.getAdsDao().findById(Long.parseLong(ad));
        ads.setTitle(title);
        ads.setDescription(description);
        DaoFactory.getAdsDao().update(ads);

        resp.sendRedirect("/profile");
    }
}
