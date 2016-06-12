package com.clilystudio.netbook.model;

import com.clilystudio.netbook.api.ApiService;

import java.io.Serializable;
import java.util.Date;

public class BookSummary implements Serializable {

    private static final long serialVersionUID = -2648695569160810325L;
    private String _id;
    private String appendComment;
    private String author;
    private String cat;
    private String cover;
    private boolean isSelected;
    private String lastChapter;
    private int latelyFollower;
    private String promLink;
    private float retentionRatio;
    private String shortIntro;
    private String[] tags;
    private String title;
    private Date updated;
    private int wordCount;

    public String getAppendComment() {
        return appendComment;
    }

    public void setAppendComment(String String1) {
        appendComment = String1;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String String1) {
        author = String1;
    }

    public String getCat() {
        return cat;
    }

    public void setCat(String String1) {
        cat = String1;
    }

    public String getCover() {
        return cover;
    }

    public void setCover(String String1) {
        cover = String1;
    }

    public String getFullCover() {
        return new StringBuilder().append(ApiService.a).append(cover).append("-covers").toString();
    }

    public String getFullCoverLarge() {
        return new StringBuilder().append(ApiService.a).append(cover).append("-coverl").toString();
    }

    public String getId() {
        return _id;
    }

    public void setId(String String1) {
        _id = String1;
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

    public String getPromLink() {
        return promLink;
    }

    public float getRetentionRatio() {
        return retentionRatio;
    }

    public void setRetentionRatio(float float1) {
        retentionRatio = float1;
    }

    public String getShortIntro() {
        return shortIntro;
    }

    public void setShortIntro(String String1) {
        shortIntro = String1;
    }

    public String[] getTags() {
        return tags;
    }

    public void setTags(String[] String_1darray1) {
        tags = String_1darray1;
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

    public int getWordCount() {
        return wordCount;
    }

    public void setWordCount(int int1) {
        wordCount = int1;
    }

    public boolean isSelected() {
        return isSelected;
    }

    public void setSelected(boolean boolean1) {
        isSelected = boolean1;
    }
}
