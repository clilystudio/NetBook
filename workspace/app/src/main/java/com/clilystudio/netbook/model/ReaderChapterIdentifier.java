package com.clilystudio.netbook.model;

import java.util.Calendar;

public class ReaderChapterIdentifier implements Comparable<ReaderChapterIdentifier> {
    private String bookId;
    private long createTime;
    private String tocHost;

    public ReaderChapterIdentifier(String string, String string2) {
        this.bookId = string;
        this.tocHost = string2;
        this.createTime = Calendar.getInstance().getTimeInMillis();
    }

    @Override
    public int compareTo(ReaderChapterIdentifier readerChapterIdentifier) {
        if (readerChapterIdentifier == null) {
            return 1;
        }
        return (int) (this.createTime - readerChapterIdentifier.getCreateTime());
    }

    public boolean equals(Object object) {
        boolean bl;
        block3:
        {
            try {
                ReaderChapterIdentifier readerChapterIdentifier = (ReaderChapterIdentifier) object;
                boolean bl2 = readerChapterIdentifier.bookId.equals(this.bookId);
                bl = false;
                if (!bl2) break block3;
            } catch (Exception var2_6) {
                var2_6.printStackTrace();
                return false;
            }
            boolean bl3 = readerChapterIdentifier.tocHost.equals(this.tocHost);
            bl = false;
            if (!bl3) break block3;
            bl = true;
        }
        return bl;
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
