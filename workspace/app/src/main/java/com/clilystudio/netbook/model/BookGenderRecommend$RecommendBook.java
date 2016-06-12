package com.clilystudio.netbook.model;

import java.util.Date;

public class BookGenderRecommend$RecommendBook {

    BookGenderRecommend this$0;     // final access specifier removed
    private String _id;
    private String author;
    private int chaptersCount;
    private String cover;
    private String lastChapter;
    private int latelyFollower;
    private double retentionRatio;
    private String shortIntro;
    private String title;
    private Date updated;
    public BookGenderRecommend$RecommendBook(BookGenderRecommend BookGenderRecommend1) {
        this$0 = BookGenderRecommend1;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String String1) {
        author = String1;
    }

    public int getChaptersCount() {
        return chaptersCount;
    }

    public void setChaptersCount(int int1) {
        chaptersCount = int1;
    }

    public String getCover() {
        return cover;
    }

    public void setCover(String String1) {
        cover = String1;
    }

    public String getLastChapter() {
        return lastChapter;
    }

    public void setLastChapter(String String1) {
        lastChapter = String1;
    }

    public int getLatelyFollower() {
        return latelyFollower;
    }

    public void setLatelyFollower(int int1) {
        latelyFollower = int1;
    }

    public double getRetentionRatio() {
        return retentionRatio;
    }

    public void setRetentionRatio(double double1) {
        retentionRatio = double1;
    }

    public String getShortIntro() {
        return shortIntro;
    }

    public void setShortIntro(String String1) {
        shortIntro = String1;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String String1) {
        title = String1;
    }

    public Date getUpdated() {
        return updated;
    }

    public void setUpdated(Date Date1) {
        updated = Date1;
    }

    public String get_id() {
        return _id;
    }

    public void set_id(String String1) {
        _id = String1;
    }
}
