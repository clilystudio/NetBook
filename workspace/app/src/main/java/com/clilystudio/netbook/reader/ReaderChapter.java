package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.hpay100.a.a;
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

    public static ReaderChapter create(ChapterLink chapterLink, int n2, int n3) {
        ReaderChapter readerChapter = new ReaderChapter();
        readerChapter.setIsVip(chapterLink.isVip());
        readerChapter.setTitle(chapterLink.getTitle());
        readerChapter.setLink(chapterLink.getLink());
        readerChapter.mMaxIndex = n2;
        readerChapter.mIndex = n3;
        return readerChapter;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public String getBody() {
        if (this.getContent() != null && this.key != null) {
            if (this.clearContent == null) {
                this.clearContent = CipherUtil.a(this.key, this.getContent());
                this.clearContent = a.y(this.clearContent);
            }
            if (this.clearContent == null) {
                return "  \u89e3\u6790\u9519\u8bef\uff0c\u8bf7\u9000\u51fa\u540e\u91cd\u65b0\u8fdb\u5165\u9605\u8bfb\u3002";
            }
            return this.clearContent;
        }
        String string = this.getContent() == null || this.isVip() && this.key == null ? super.getBody() : this.getContent();
        if (this.formattedBody == null) {
            this.formattedBody = a.y(string);
        }
        return this.formattedBody;
    }

    @Override
    public void setBody(String string) {
        super.setBody(string);
        this.mStatus = 1;
    }

    /*
     * Enabled aggressive block sorting
     */
    public String getBody(n n2) {
        if (this.getContent() != null && this.key != null) {
            if (this.clearContent == null) {
                this.clearContent = CipherUtil.a(this.key, this.getContent());
                this.clearContent = a.y(this.clearContent);
                n2.a(this.clearContent);
            }
            if (this.clearContent == null) {
                return "  \u89e3\u6790\u9519\u8bef\uff0c\u8bf7\u9000\u51fa\u540e\u91cd\u65b0\u8fdb\u5165\u9605\u8bfb\u3002";
            }
            return this.clearContent;
        }
        String string = this.getContent() == null || this.isVip() && this.key == null ? super.getBody() : this.getContent();
        if (this.formattedBody == null) {
            this.formattedBody = a.y(string);
        }
        return this.formattedBody;
    }

    public int getIndex() {
        return this.mIndex;
    }

    public String getKey() {
        return this.key;
    }

    public void setKey(String string) {
        this.key = string;
    }

    public int getMaxIndex() {
        return this.mMaxIndex;
    }

    public void setMaxIndex(int n2) {
        this.mMaxIndex = n2;
    }

    public int getStatus() {
        return this.mStatus;
    }

    public void setStatus(int n2) {
        this.mStatus = n2;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public void setTitle(String string) {
        this.mTitle = string;
    }

    public boolean hasNext() {
        if (this.mIndex < this.mMaxIndex) {
            return true;
        }
        return false;
    }

    public boolean hasPrevious() {
        if (this.mIndex != 0) {
            return true;
        }
        return false;
    }
}
