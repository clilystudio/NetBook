package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.model.Chapter;
import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.util.CipherUtil;

public class ReaderChapter extends Chapter {

    public static final int STATUS_CHAPTER_EMPTY = -3;
    public static final int STATUS_CHAPTER_NOT_AVAILABLE = -2;
    public static final int STATUS_CONNECTION_ERROR = -1;
    public static final int STATUS_MODE_ERROR = -5;
    public static final int STATUS_OK = 1;
    public static final int STATUS_PENDING = 0;
    public static final int STATUS_TOC_ERROR = -4;
    private String clearContent;
    private String formattedBody;
    private String key;
    private int mIndex;
    private int mMaxIndex;
    private String mTitle;
    private int mStatus = 0;

    public static ReaderChapter create(ChapterLink ChapterLink1, int int2, int int3) {
        ReaderChapter ReaderChapter4 = new ReaderChapter();

        ReaderChapter4.setIsVip(ChapterLink1.isVip());
        ReaderChapter4.setTitle(ChapterLink1.getTitle());
        ReaderChapter4.setLink(ChapterLink1.getLink());
        ReaderChapter4.mMaxIndex = int2;
        ReaderChapter4.mIndex = int3;
        return ReaderChapter4;
    }

    public String getBody() {
        if (getContent() != null && key != null) {
            if (clearContent == null) {
                clearContent = CipherUtil.a(key, getContent());
                clearContent = com.clilystudio.netbook.hpay100.a.a.y(clearContent);
            }
            if (clearContent == null)
                return "  \u89E3\u6790\u9519\u8BEF\uFF0C\u8BF7\u9000\u51FA\u540E\u91CD\u65B0\u8FDB\u5165\u9605\u8BFB\u3002";
            else
                return clearContent;
        } else {
            String String1;

            if (getContent() == null || isVip() && key == null)
                String1 = super.getBody();
            else
                String1 = getContent();
            if (formattedBody == null)
                formattedBody = com.clilystudio.netbook.hpay100.a.a.y(String1);
            return formattedBody;
        }
    }

    public void setBody(String String1) {
        super.setBody(String1);
        mStatus = 1;
    }

    public String getBody(n n1) {
        if (getContent() != null && key != null) {
            if (clearContent == null) {
                clearContent = CipherUtil.a(key, getContent());
                clearContent = com.clilystudio.netbook.hpay100.a.a.y(clearContent);
                n1.a(clearContent);
            }
            if (clearContent == null)
                return "  \u89E3\u6790\u9519\u8BEF\uFF0C\u8BF7\u9000\u51FA\u540E\u91CD\u65B0\u8FDB\u5165\u9605\u8BFB\u3002";
            else
                return clearContent;
        } else {
            String String2;

            if (getContent() == null || isVip() && key == null)
                String2 = super.getBody();
            else
                String2 = getContent();
            if (formattedBody == null)
                formattedBody = com.clilystudio.netbook.hpay100.a.a.y(String2);
            return formattedBody;
        }
    }

    public int getIndex() {
        return mIndex;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String String1) {
        key = String1;
    }

    public int getMaxIndex() {
        return mMaxIndex;
    }

    public void setMaxIndex(int int1) {
        mMaxIndex = int1;
    }

    public int getStatus() {
        return mStatus;
    }

    public void setStatus(int int1) {
        mStatus = int1;
    }

    public String getTitle() {
        return mTitle;
    }

    public void setTitle(String String1) {
        mTitle = String1;
    }

    public boolean hasNext() {
        if (mIndex < mMaxIndex)
            return true;
        else
            return false;
    }

    public boolean hasPrevious() {
        if (mIndex != 0)
            return true;
        else
            return false;
    }
}
