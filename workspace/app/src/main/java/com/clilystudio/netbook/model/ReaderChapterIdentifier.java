package com.clilystudio.netbook.model;

import android.support.annotation.NonNull;

import java.util.Calendar;

public class ReaderChapterIdentifier implements Comparable<ReaderChapterIdentifier> {
    private String bookId;
    private long createTime;
    private String tocHost;

    public ReaderChapterIdentifier(String bookId, String tocHost) {
        this.bookId = bookId;
        this.tocHost = tocHost;
        this.createTime = Calendar.getInstance().getTimeInMillis();
    }

    @Override
    public int compareTo(@NonNull ReaderChapterIdentifier readerChapterIdentifier) {
        if (readerChapterIdentifier == null) {
            return 1;
        }
        return (int) (this.createTime - readerChapterIdentifier.getCreateTime());
    }

    public boolean equals(Object object) {
        try {
            ReaderChapterIdentifier readerChapterIdentifier = (ReaderChapterIdentifier) object;
            return readerChapterIdentifier.bookId.equals(this.bookId) && readerChapterIdentifier.tocHost.equals(this.tocHost);
        } catch (Exception var2_6) {
            var2_6.printStackTrace();
            return false;
        }
    }

    public String getBookId() {
        return this.bookId;
    }

    public void setBookId(String string) {
        this.bookId = string;
    }

    public long getCreateTime() {
        return this.createTime;
    }

    public void setCreateTime(long l) {
        this.createTime = l;
    }

    public String getTocHost() {
        return this.tocHost;
    }

    public void setTocHost(String string) {
        this.tocHost = string;
    }

    public int hashCode() {
        if (this.bookId == null || this.tocHost == null) {
            return super.hashCode();
        }
        return this.bookId.hashCode();
    }
}
