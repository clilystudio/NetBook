
package com.clilystudio.netbook.model;

import java.io.Serializable;

public class ChapterLink implements Serializable {

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
    private static final long serialVersionUID = -5702613650428568284L;
    private boolean unreadble = false;

    public int getCurrency()
    {
        return currency;
    }

    public int getEasouIndex()
    {
        return mEasouIndex;
    }

    public String getId()
    {
        return id;
    }

    public String getLeidianTk()
    {
        return mLeidianTk;
    }

    public String getLink()
    {
        return link;
    }

    public int getSosoIndex()
    {
        return mSosoIndex;
    }

    public String getTitle()
    {
        return title;
    }

    public int getTxtCharLength()
    {
        return mTxtCharLength;
    }

    public int getTxtCharOffset()
    {
        return mTxtCharOffset;
    }

    public int getTxtLineOffset()
    {
        return mTxtLineOffset;
    }

    public boolean getUnreadble()
    {
        return unreadble;
    }

    public boolean isVip()
    {
        return isVip;
    }

    public void setCurrency(int int1)
    {
        currency = int1;
    }

    public void setEasouIndex(int int1)
    {
        mEasouIndex = int1;
    }

    public void setId(String String1)
    {
        id = String1;
    }

    public void setIsVip(boolean boolean1)
    {
        isVip = boolean1;
    }

    public void setLeidianTk(String String1)
    {
        mLeidianTk = String1;
    }

    public void setLink(String String1)
    {
        link = String1;
    }

    public void setSosoIndex(int int1)
    {
        mSosoIndex = int1;
    }

    public void setTitle(String String1)
    {
        title = String1;
    }

    public void setTxtCharLength(int int1)
    {
        mTxtCharLength = int1;
    }

    public void setTxtCharOffset(int int1)
    {
        mTxtCharOffset = int1;
    }

    public void setTxtLineOffset(int int1)
    {
        mTxtLineOffset = int1;
    }

    public void setUnreadble(boolean boolean1)
    {
        unreadble = boolean1;
    }
}
