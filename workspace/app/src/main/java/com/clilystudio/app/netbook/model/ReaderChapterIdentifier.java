package com.clilystudio.app.netbook.model;

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
            boolean bool2 = false;
            if (bool1) {
                boolean bool3 = localReaderChapterIdentifier.tocHost.equals(this.tocHost);
                bool2 = false;
                if (bool3)
                    bool2 = true;
            }
            return bool2;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return false;
    }

    public String getBookId() {
        return this.bookId;
    }

    public long getCreateTime() {
        return this.createTime;
    }

    public String getTocHost() {
        return this.tocHost;
    }

    public int hashCode() {
        if ((this.bookId == null) || (this.tocHost == null))
            return super.hashCode();
        return this.bookId.hashCode();
    }

    public void setBookId(String paramString) {
        this.bookId = paramString;
    }

    public void setCreateTime(long paramLong) {
        this.createTime = paramLong;
    }

    public void setTocHost(String paramString) {
        this.tocHost = paramString;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.ReaderChapterIdentifier
 * JD-Core Version:    0.6.2
 */