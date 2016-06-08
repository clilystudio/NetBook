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
    private int mStatus = 0;
    private String mTitle;

    public static ReaderChapter create(ChapterLink paramChapterLink, int paramInt1, int paramInt2) {
        ReaderChapter localReaderChapter = new ReaderChapter();
        localReaderChapter.setIsVip(paramChapterLink.isVip());
        localReaderChapter.setTitle(paramChapterLink.getTitle());
        localReaderChapter.setLink(paramChapterLink.getLink());
        localReaderChapter.mMaxIndex = paramInt1;
        localReaderChapter.mIndex = paramInt2;
        return localReaderChapter;
    }

    public String getBody() {
        if ((getContent() != null) && (this.key != null)) {
            if (this.clearContent == null) {
                this.clearContent = CipherUtil.a(this.key, getContent());
                this.clearContent = a.y(this.clearContent);
            }
            if (this.clearContent == null)
                return "  解析错误，请退出后重新进入阅读。";
            return this.clearContent;
        }
        if ((getContent() == null) || ((isVip()) && (this.key == null))) ;
        for (String str = super.getBody(); ; str = getContent()) {
            if (this.formattedBody == null)
                this.formattedBody = a.y(str);
            return this.formattedBody;
        }
    }

    public void setBody(String paramString) {
        super.setBody(paramString);
        this.mStatus = 1;
    }

    public String getBody(n paramn) {
        if ((getContent() != null) && (this.key != null)) {
            if (this.clearContent == null) {
                this.clearContent = CipherUtil.a(this.key, getContent());
                this.clearContent = a.y(this.clearContent);
                paramn.a(this.clearContent);
            }
            if (this.clearContent == null)
                return "  解析错误，请退出后重新进入阅读。";
            return this.clearContent;
        }
        if ((getContent() == null) || ((isVip()) && (this.key == null))) ;
        for (String str = super.getBody(); ; str = getContent()) {
            if (this.formattedBody == null)
                this.formattedBody = a.y(str);
            return this.formattedBody;
        }
    }

    public int getIndex() {
        return this.mIndex;
    }

    public String getKey() {
        return this.key;
    }

    public void setKey(String paramString) {
        this.key = paramString;
    }

    public int getMaxIndex() {
        return this.mMaxIndex;
    }

    public void setMaxIndex(int paramInt) {
        this.mMaxIndex = paramInt;
    }

    public int getStatus() {
        return this.mStatus;
    }

    public void setStatus(int paramInt) {
        this.mStatus = paramInt;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public void setTitle(String paramString) {
        this.mTitle = paramString;
    }

    public boolean hasNext() {
        return this.mIndex < this.mMaxIndex;
    }

    public boolean hasPrevious() {
        return this.mIndex != 0;
    }
}

