package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.util.TempUtil;
import com.clilystudio.netbook.model.Chapter;
import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.util.CipherUtil;

public class ReaderChapter extends Chapter {
    public static final int STATUS_CONNECTION_ERROR = -1;
    public static final int STATUS_CHAPTER_NOT_AVAILABLE = -2;
    public static final int STATUS_CHAPTER_EMPTY = -3;
    public static final int STATUS_TOC_ERROR = -4;
    public static final int STATUS_MODE_ERROR = -5;
    public static final int STATUS_PENDING = 0;
    public static final int STATUS_OK = 1;
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
                this.clearContent = TempUtil.formatContent(this.clearContent);
            }
            if (this.clearContent == null) {
                return "  解析错误，请退出后重新进入阅读。";
            }
            return this.clearContent;
        }
        String string = this.getContent() == null || this.isVip() && this.key == null ? super.getBody() : this.getContent();
        if (this.formattedBody == null) {
            this.formattedBody = TempUtil.formatContent(string);
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
    public String getBody(ReaderLineInfo n2) {
        if (this.getContent() != null && this.key != null) {
            if (this.clearContent == null) {
                this.clearContent = CipherUtil.a(this.key, this.getContent());
                this.clearContent = TempUtil.formatContent(this.clearContent);
                n2.a(this.clearContent);
            }
            if (this.clearContent == null) {
                return "  解析错误，请退出后重新进入阅读。";
            }
            return this.clearContent;
        }
        String string = this.getContent() == null || this.isVip() && this.key == null ? super.getBody() : this.getContent();
        if (this.formattedBody == null) {
            this.formattedBody = TempUtil.formatContent(string);
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
        return this.mIndex < this.mMaxIndex;
    }

    public boolean hasPrevious() {
        return this.mIndex != 0;
    }
}
