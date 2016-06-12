package com.clilystudio.netbook.model;

import java.util.Calendar;

public class ReaderChapterIdentifier implements Comparable {

    private String bookId;
    private long createTime;
    private String tocHost;
    public ReaderChapterIdentifier(String String1, String String2) {
        bookId = String1;
        tocHost = String2;
        createTime = Calendar.getInstance().getTimeInMillis();
    }

    public int compareTo(ReaderChapterIdentifier ReaderChapterIdentifier1) {
        if (ReaderChapterIdentifier1 == null)
            return 1;
        else
            return (int) (createTime - ReaderChapterIdentifier1.getCreateTime());
    }

    public volatile int compareTo(Object Object1) {
        return compareTo((ReaderChapterIdentifier) Object1);
    }

    public boolean equals(Object Object1) {
        ReaderChapterIdentifier ReaderChapterIdentifier3;
        boolean boolean4;
        boolean boolean5;

        try {
            ReaderChapterIdentifier3 = (ReaderChapterIdentifier) Object1;
            boolean4 = ReaderChapterIdentifier3.bookId.equals(bookId);
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return false;
        }
        boolean5 = false;
        if (boolean4) {
            boolean boolean6;

            try {
                boolean6 = ReaderChapterIdentifier3.tocHost.equals(tocHost);
            } catch (Exception Exception7) {
                Exception7.printStackTrace();
                return false;
            }
            boolean5 = false;
            if (boolean6)
                boolean5 = true;
        }
        return boolean5;
    }

    public String getBookId() {
        return bookId;
    }

    public void setBookId(String String1) {
        bookId = String1;
    }

    public long getCreateTime() {
        return createTime;
    }

    public void setCreateTime(long long1) {
        createTime = long1;
    }

    public String getTocHost() {
        return tocHost;
    }

    public void setTocHost(String String1) {
        tocHost = String1;
    }

    public int hashCode() {
        if (bookId == null || tocHost == null)
            return super.hashCode();
        else
            return bookId.hashCode();
    }
}
