package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.ArrayList;
import java.util.List;

public class ListAdsDao implements Ads {
    private List<Ad> ads;

    public List<Ad> all() {
        if (ads == null) {
            ads = generateAds();
        }
        return ads;
    }

    public Long insert(Ad ad) {
        // make sure we have ads
        if (ads == null) {
            ads = generateAds();
        }
        // we'll assign an "id" here based on the size of the ads list
        // really the dao would handle this
        ad.setId((long) ads.size());
        ads.add(ad);
        return ad.getId();
    }

    @Override

    public void update(Ad ad) {
        if (ads == null) {
            ads = generateAds();
        }
        for(Ad existedAd : ads){
            if(existedAd.getId() == ad.getId()){
                existedAd.setTitle(ad.getTitle());
                existedAd.setDescription(ad.getDescription());
                break;
            }
        }
    }

    @Override
    public void delete(long id) {
        if (ads == null) {
            ads = generateAds();
        }
        Ad removeAd = null;
        for (Ad existedAd : ads) {
            if (existedAd.getId() == id) {
                removeAd = existedAd;
                break;
            }
        }
        if (removeAd != null) {
            ads.remove(removeAd);
        }
    }

    @Override
    public Ad findById(long id) {
        for (Ad ad : ads) {
            if (ad.getId() == id) {
                return ad;
            }
        }
        return null; // If no ad with the given ID is found
    }

    @Override
    public List<Ad> findByUserId(long userId) {
        List<Ad> userAds = new ArrayList<>();
        if (ads == null) {
            ads = generateAds();
        }
        for (Ad ad : ads) {
            if (ad.getUserId() == userId) {
                userAds.add(ad);
            }
        }
        return userAds;

    public List<Ad> search(String query) {
        return null;


    }

    private List<Ad> generateAds() {
        List<Ad> ads = new ArrayList<>();
        ads.add(new Ad(
            1,
            1,
            "playstation for sale",
            "This is a slightly used playstation"
        ));
        ads.add(new Ad(
            2,
            1,
            "Super Nintendo",
            "Get your game on with this old-school classic!"
        ));
        ads.add(new Ad(
            3,
            2,
            "Junior Java Developer Position",
            "Minimum 7 years of experience required. You will be working in the scripting language for Java, JavaScript"
        ));
        ads.add(new Ad(
            4,
            2,
            "JavaScript Developer needed",
            "Must have strong Java skills"
        ));
        return ads;
    }
}
