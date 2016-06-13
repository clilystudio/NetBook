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

    public void setAppendComment(String string) {
        this.appendComment = string;
    }

    public String getAuthor() {
        return this.author;
    }

    public void setAuthor(String string) {
        this.author = string;
    }

    public String getCat() {
        return this.cat;
    }

    public void setCat(String string) {
        this.cat = string;
    }

    public String getCover() {
        return this.cover;
    }

    public void setCover(String string) {
        this.cover = string;
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

    public void setId(String string) {
        this._id = string;
    }

    public String getLastChapter() {
        return this.lastChapter;
    }

    public void setLastChapter(String string) {
        this.lastChapter = string;
    }

    public int getLatelyFollower() {
        return this.latelyFollower;
    }

    public void setLatelyFollower(int n) {
        this.latelyFollower = n;
    }

    public String getPromLink() {
        return this.promLink;
    }

    public float getRetentionRatio() {
        return this.retentionRatio;
    }

    public void setRetentionRatio(float f2) {
        this.retentionRatio = f2;
    }

    public String getShortIntro() {
        return this.shortIntro;
    }

    public void setShortIntro(String string) {
        this.shortIntro = string;
    }

    public String[] getTags() {
        return this.tags;
    }

    public void setTags(String[] arrstring) {
        this.tags = arrstring;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String string) {
        this.title = string;
    }

    public Date getUpdated() {
        return this.updated;
    }

    public void setUpdated(Date date) {
        this.updated = date;
    }

    public int getWordCount() {
        return this.wordCount;
    }

    public void setWordCount(int n) {
        this.wordCount = n;
    }

    public boolean isSelected() {
        return this.isSelected;
    }

    public void setSelected(boolean bl) {
        this.isSelected = bl;
    }
}
