
package com.clilystudio.netbook.model;

import com.clilystudio.netbook.db.AudioRecord;
import com.clilystudio.netbook.db.BookFile;
import com.clilystudio.netbook.db.BookReadRecord;

public class BookShelf {

    private long lastRead;
    private long lastUpdate;
    private Advert mAdvert;
    private AudioRecord mAlbum;
    private BookFeed mBookFeed;
    private BookReadRecord mBookRecord;
    private BookFile mTxt;
    private int mType;
    public static final int SHELF_AD = 1;
    public static final int SHELF_ALBUM = 4;
    public static final int SHELF_BOOK = 0;
    public static final int SHELF_FEED = 3;
    public static final int SHELF_TXT = 2;
    public static final int TYPE_COUNT = 5;
    private int adIndex = -1;

    public int getAdIndex()
    {
        return adIndex;
    }

    public Advert getAdvert()
    {
        return mAdvert;
    }

    public AudioRecord getAlbum()
    {
        return mAlbum;
    }

    public BookFeed getBookFeed()
    {
        return mBookFeed;
    }

    public BookReadRecord getBookRecord()
    {
        return mBookRecord;
    }

    public long getLastRead()
    {
        return lastRead;
    }

    public long getLastUpdate()
    {
        return lastUpdate;
    }

    public String getTitle()
    {
        if( mBookRecord != null )
            return mBookRecord.getTitle();
        else if( mTxt != null )
            return mTxt.getName();
        else if( mAdvert != null )
            return mAdvert.getTitle();
        else if( mAlbum != null )
            return mAlbum.getName();
        else
            return "";
    }

    public BookFile getTxt()
    {
        return mTxt;
    }

    public int getType()
    {
        return mType;
    }

    public boolean isTop()
    {
        if( mBookRecord != null )
            return mBookRecord.isTop();
        else if( mTxt != null )
            return mTxt.isTop();
        else if( mAlbum != null )
            return mAlbum.isTop();
        else
            return false;
    }

    public void setAdIndex(int int1)
    {
        adIndex = int1;
    }

    public void setAdvert(Advert Advert1)
    {
        mAdvert = Advert1;
        mType = 1;
    }

    public void setAlbum(AudioRecord AudioRecord1)
    {
        mAlbum = AudioRecord1;
        mType = 4;
    }

    public void setBookFeed(BookFeed BookFeed1)
    {
        mBookFeed = BookFeed1;
        mType = 3;
    }

    public void setBookRecord(BookReadRecord BookReadRecord1)
    {
        mBookRecord = BookReadRecord1;
        mType = 0;
    }

    public void setLastRead(long long1)
    {
        lastRead = long1;
    }

    public void setLastUpdate(long long1)
    {
        lastUpdate = long1;
    }

    public void setTxt(BookFile BookFile1)
    {
        mTxt = BookFile1;
        mType = 2;
    }
}
