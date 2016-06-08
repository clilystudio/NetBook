package com.clilystudio.netbook.model;

import java.io.Serializable;

public class ChapterLink
        implements Serializable {
    private static final long serialVersionUID = -5702613650428568284L;
    private int currency;
    private String id;
    private boolean isVip;
    private String link;
    private int mEasouIndex;
    private String mLeidianTk;
    private int mSosoIndex;
    private int mTxtCharLength;
    private int mTxtCharOffset;
    private int mTxtLineOffset;
    private String title;
    private boolean unreadble = false;

    public int getCurrency() {
        return this.currency;
    }

    public void setCurrency(int paramInt) {
        this.currency = paramInt;
    }

    public int getEasouIndex() {
        return this.mEasouIndex;
    }

    public void setEasouIndex(int paramInt) {
        this.mEasouIndex = paramInt;
    }

    public String getId() {
        return this.id;
    }

    public void setId(String paramString) {
        this.id = paramString;
    }

    public String getLeidianTk() {
        return this.mLeidianTk;
    }

    public void setLeidianTk(String paramString) {
        this.mLeidianTk = paramString;
    }

    public String getLink() {
        return this.link;
    }

    public void setLink(String paramString) {
        this.link = paramString;
    }

    public int getSosoIndex() {
        return this.mSosoIndex;
    }

    public void setSosoIndex(int paramInt) {
        this.mSosoIndex = paramInt;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String paramString) {
        this.title = paramString;
    }

    public int getTxtCharLength() {
        return this.mTxtCharLength;
    }

    public void setTxtCharLength(int paramInt) {
        this.mTxtCharLength = paramInt;
    }

    public int getTxtCharOffset() {
        return this.mTxtCharOffset;
    }

    public void setTxtCharOffset(int paramInt) {
        this.mTxtCharOffset = paramInt;
    }

    public int getTxtLineOffset() {
        return this.mTxtLineOffset;
    }

    public void setTxtLineOffset(int paramInt) {
        this.mTxtLineOffset = paramInt;
    }

    public boolean getUnreadble() {
        return this.unreadble;
    }

    public void setUnreadble(boolean paramBoolean) {
        this.unreadble = paramBoolean;
    }

    public boolean isVip() {
        return this.isVip;
    }

    public void setIsVip(boolean paramBoolean) {
        this.isVip = paramBoolean;
    }
}

