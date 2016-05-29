package com.clilystudio.app.netbook.model;

import com.clilystudio.app.netbook.api.ApiService;

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

    public String getAuthor() {
        return this.author;
    }

    public String getCat() {
        return this.cat;
    }

    public String getCover() {
        return this.cover;
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

    public String getLastChapter() {
        return this.lastChapter;
    }

    public int getLatelyFollower() {
        return this.latelyFollower;
    }

    public String getPromLink() {
        return this.promLink;
    }

    public float getRetentionRatio() {
        return this.retentionRatio;
    }

    public String getShortIntro() {
        return this.shortIntro;
    }

    public String[] getTags() {
        return this.tags;
    }

    public String getTitle() {
        return this.title;
    }

    public Date getUpdated() {
        return this.updated;
    }

    public int getWordCount() {
        return this.wordCount;
    }

    public boolean isSelected() {
        return this.isSelected;
    }

    public void setAppendComment(String paramString) {
        this.appendComment = paramString;
    }

    public void setAuthor(String paramString) {
        this.author = paramString;
    }

    public void setCat(String paramString) {
        this.cat = paramString;
    }

    public void setCover(String paramString) {
        this.cover = paramString;
    }

    public void setId(String paramString) {
        this._id = paramString;
    }

    public void setLastChapter(String paramString) {
        this.lastChapter = paramString;
    }

    public void setLatelyFollower(int paramInt) {
        this.latelyFollower = paramInt;
    }

    public void setRetentionRatio(float paramFloat) {
        this.retentionRatio = paramFloat;
    }

    public void setSelected(boolean paramBoolean) {
        this.isSelected = paramBoolean;
    }

    public void setShortIntro(String paramString) {
        this.shortIntro = paramString;
    }

    public void setTags(String[] paramArrayOfString) {
        this.tags = paramArrayOfString;
    }

    public void setTitle(String paramString) {
        this.title = paramString;
    }

    public void setUpdated(Date paramDate) {
        this.updated = paramDate;
    }

    public void setWordCount(int paramInt) {
        this.wordCount = paramInt;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.BookSummary
 * JD-Core Version:    0.6.2
 */