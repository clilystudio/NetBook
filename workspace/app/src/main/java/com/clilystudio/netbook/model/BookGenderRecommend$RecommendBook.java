package com.clilystudio.netbook.model;

import java.util.Date;

public class BookGenderRecommend$RecommendBook {
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

    public BookGenderRecommend$RecommendBook(BookGenderRecommend paramBookGenderRecommend) {
    }

    public String getAuthor() {
        return this.author;
    }

    public void setAuthor(String paramString) {
        this.author = paramString;
    }

    public int getChaptersCount() {
        return this.chaptersCount;
    }

    public void setChaptersCount(int paramInt) {
        this.chaptersCount = paramInt;
    }

    public String getCover() {
        return this.cover;
    }

    public void setCover(String paramString) {
        this.cover = paramString;
    }

    public String getLastChapter() {
        return this.lastChapter;
    }

    public void setLastChapter(String paramString) {
        this.lastChapter = paramString;
    }

    public int getLatelyFollower() {
        return this.latelyFollower;
    }

    public void setLatelyFollower(int paramInt) {
        this.latelyFollower = paramInt;
    }

    public double getRetentionRatio() {
        return this.retentionRatio;
    }

    public void setRetentionRatio(double paramDouble) {
        this.retentionRatio = paramDouble;
    }

    public String getShortIntro() {
        return this.shortIntro;
    }

    public void setShortIntro(String paramString) {
        this.shortIntro = paramString;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String paramString) {
        this.title = paramString;
    }

    public Date getUpdated() {
        return this.updated;
    }

    public void setUpdated(Date paramDate) {
        this.updated = paramDate;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String paramString) {
        this._id = paramString;
    }
}

