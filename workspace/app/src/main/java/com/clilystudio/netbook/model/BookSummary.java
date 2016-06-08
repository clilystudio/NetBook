package com.clilystudio.netbook.model;

import com.clilystudio.netbook.api.ApiService;

import java.io.Serializable;
import java.util.Date;

public class BookSummary
        implements Serializable {
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
        return this.appendComment;
    }

    public void setAppendComment(String paramString) {
        this.appendComment = paramString;
    }

    public String getAuthor() {
        return this.author;
    }

    public void setAuthor(String paramString) {
        this.author = paramString;
    }

    public String getCat() {
        return this.cat;
    }

    public void setCat(String paramString) {
        this.cat = paramString;
    }

    public String getCover() {
        return this.cover;
    }

    public void setCover(String paramString) {
        this.cover = paramString;
    }

    public String getFullCover() {
        return ApiService.a + this.cover + "-covers";
    }

    public String getFullCoverLarge() {
        return ApiService.a + this.cover + "-coverl";
    }

    public String getId() {
        return this._id;
    }

    public void setId(String paramString) {
        this._id = paramString;
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

    public String getPromLink() {
        return this.promLink;
    }

    public float getRetentionRatio() {
        return this.retentionRatio;
    }

    public void setRetentionRatio(float paramFloat) {
        this.retentionRatio = paramFloat;
    }

    public String getShortIntro() {
        return this.shortIntro;
    }

    public void setShortIntro(String paramString) {
        this.shortIntro = paramString;
    }

    public String[] getTags() {
        return this.tags;
    }

    public void setTags(String[] paramArrayOfString) {
        this.tags = paramArrayOfString;
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

    public int getWordCount() {
        return this.wordCount;
    }

    public void setWordCount(int paramInt) {
        this.wordCount = paramInt;
    }

    public boolean isSelected() {
        return this.isSelected;
    }

    public void setSelected(boolean paramBoolean) {
        this.isSelected = paramBoolean;
    }
}

