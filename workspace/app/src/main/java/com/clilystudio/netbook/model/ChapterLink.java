package com.clilystudio.netbook.model;

import java.io.Serializable;

public class ChapterLink implements Serializable {
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

    public void setCurrency(int n) {
        this.currency = n;
    }

    public int getEasouIndex() {
        return this.mEasouIndex;
    }

    public void setEasouIndex(int n) {
        this.mEasouIndex = n;
    }

    public String getId() {
        return this.id;
    }

    public void setId(String string) {
        this.id = string;
    }

    public String getLeidianTk() {
        return this.mLeidianTk;
    }

    public void setLeidianTk(String string) {
        this.mLeidianTk = string;
    }

    public String getLink() {
        return this.link;
    }

    public void setLink(String string) {
        this.link = string;
    }

    public int getSosoIndex() {
        return this.mSosoIndex;
    }

    public void setSosoIndex(int n) {
        this.mSosoIndex = n;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String string) {
        this.title = string;
    }

    public int getTxtCharLength() {
        return this.mTxtCharLength;
    }

    public void setTxtCharLength(int n) {
        this.mTxtCharLength = n;
    }

    public int getTxtCharOffset() {
        return this.mTxtCharOffset;
    }

    public void setTxtCharOffset(int n) {
        this.mTxtCharOffset = n;
    }

    public int getTxtLineOffset() {
        return this.mTxtLineOffset;
    }

    public void setTxtLineOffset(int n) {
        this.mTxtLineOffset = n;
    }

    public boolean getUnreadble() {
        return this.unreadble;
    }

    public void setUnreadble(boolean bl) {
        this.unreadble = bl;
    }

    public boolean isVip() {
        return this.isVip;
    }

    public void setIsVip(boolean bl) {
        this.isVip = bl;
    }
}
