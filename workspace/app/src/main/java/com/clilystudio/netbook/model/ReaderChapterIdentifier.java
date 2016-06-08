package com.clilystudio.netbook.model;

import java.util.Calendar;

public class ReaderChapterIdentifier
        implements Comparable<ReaderChapterIdentifier> {
    private String bookId;
    private long createTime;
    private String tocHost;

    public ReaderChapterIdentifier(String paramString1, String paramString2) {
        this.bookId = paramString1;
        this.tocHost = paramString2;
        this.createTime = Calendar.getInstance().getTimeInMillis();
    }

    public int compareTo(ReaderChapterIdentifier paramReaderChapterIdentifier) {
        if (paramReaderChapterIdentifier == null)
            return 1;
        return (int) (this.createTime - paramReaderChapterIdentifier.getCreateTime());
    }

    public boolean equals(Object paramObject) {
        try {
            ReaderChapterIdentifier localReaderChapterIdentifier = (ReaderChapterIdentifier) paramObject;
            boolean bool1 = localReaderChapterIdentifier.bookId.equals(this.bookId);
            int i = 0;
            if (bool1) {
                boolean bool2 = localReaderChapterIdentifier.tocHost.equals(this.tocHost);
                i = 0;
                if (bool2)
                    i = 1;
            }
            return i;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return false;
    }

    public String getBookId() {
        return this.bookId;
    }

    public void setBookId(String paramString) {
        this.bookId = paramString;
    }

    public long getCreateTime() {
        return this.createTime;
    }

    public void setCreateTime(long paramLong) {
        this.createTime = paramLong;
    }

    public String getTocHost() {
        return this.tocHost;
    }

    public void setTocHost(String paramString) {
        this.tocHost = paramString;
    }

    public int hashCode() {
        if ((this.bookId == null) || (this.tocHost == null))
            return super.hashCode();
        return this.bookId.hashCode();
    }
}

