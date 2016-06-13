package com.clilystudio.netbook.model;

import com.clilystudio.netbook.db.AudioRecord;
import com.clilystudio.netbook.db.BookFile;
import com.clilystudio.netbook.db.BookReadRecord;

public class BookShelf {
    public static final int SHELF_AD = 1;
    public static final int SHELF_ALBUM = 4;
    public static final int SHELF_BOOK = 0;
    public static final int SHELF_FEED = 3;
    public static final int SHELF_TXT = 2;
    public static final int TYPE_COUNT = 5;
    private int adIndex = -1;
    private long lastRead;
    private long lastUpdate;
    private Advert mAdvert;
    private AudioRecord mAlbum;
    private BookFeed mBookFeed;
    private BookReadRecord mBookRecord;
    private BookFile mTxt;
    private int mType;

    public int getAdIndex() {
        return this.adIndex;
    }

    public void setAdIndex(int n) {
        this.adIndex = n;
    }

    public Advert getAdvert() {
        return this.mAdvert;
    }

    public void setAdvert(Advert advert) {
        this.mAdvert = advert;
        this.mType = 1;
    }

    public AudioRecord getAlbum() {
        return this.mAlbum;
    }

    public void setAlbum(AudioRecord audioRecord) {
        this.mAlbum = audioRecord;
        this.mType = 4;
    }

    public BookFeed getBookFeed() {
        return this.mBookFeed;
    }

    public void setBookFeed(BookFeed bookFeed) {
        this.mBookFeed = bookFeed;
        this.mType = 3;
    }

    public BookReadRecord getBookRecord() {
        return this.mBookRecord;
    }

    public void setBookRecord(BookReadRecord bookReadRecord) {
        this.mBookRecord = bookReadRecord;
        this.mType = 0;
    }

    public long getLastRead() {
        return this.lastRead;
    }

    public void setLastRead(long l) {
        this.lastRead = l;
    }

    public long getLastUpdate() {
        return this.lastUpdate;
    }

    public void setLastUpdate(long l) {
        this.lastUpdate = l;
    }

    public String getTitle() {
        if (this.mBookRecord != null) {
            return this.mBookRecord.getTitle();
        }
        if (this.mTxt != null) {
            return this.mTxt.getName();
        }
        if (this.mAdvert != null) {
            return this.mAdvert.getTitle();
        }
        if (this.mAlbum != null) {
            return this.mAlbum.getName();
        }
        return "";
    }

    public BookFile getTxt() {
        return this.mTxt;
    }

    public void setTxt(BookFile bookFile) {
        this.mTxt = bookFile;
        this.mType = 2;
    }

    public int getType() {
        return this.mType;
    }

    public boolean isTop() {
        if (this.mBookRecord != null) {
            return this.mBookRecord.isTop();
        }
        if (this.mTxt != null) {
            return this.mTxt.isTop();
        }
        if (this.mAlbum != null) {
            return this.mAlbum.isTop();
        }
        return false;
    }
}
