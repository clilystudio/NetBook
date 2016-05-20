package com.clilystudio.app.netbook.model;

import com.clilystudio.app.netbook.db.AudioRecord;
import com.clilystudio.app.netbook.db.BookFile;
import com.clilystudio.app.netbook.db.BookReadRecord;

public class BookShelf
{
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

  public int getAdIndex()
  {
    return this.adIndex;
  }

  public Advert getAdvert()
  {
    return this.mAdvert;
  }

  public AudioRecord getAlbum()
  {
    return this.mAlbum;
  }

  public BookFeed getBookFeed()
  {
    return this.mBookFeed;
  }

  public BookReadRecord getBookRecord()
  {
    return this.mBookRecord;
  }

  public long getLastRead()
  {
    return this.lastRead;
  }

  public long getLastUpdate()
  {
    return this.lastUpdate;
  }

  public String getTitle()
  {
    if (this.mBookRecord != null)
      return this.mBookRecord.getTitle();
    if (this.mTxt != null)
      return this.mTxt.getName();
    if (this.mAdvert != null)
      return this.mAdvert.getTitle();
    if (this.mAlbum != null)
      return this.mAlbum.getName();
    return "";
  }

  public BookFile getTxt()
  {
    return this.mTxt;
  }

  public int getType()
  {
    return this.mType;
  }

  public boolean isTop()
  {
    if (this.mBookRecord != null)
      return this.mBookRecord.isTop();
    if (this.mTxt != null)
      return this.mTxt.isTop();
    if (this.mAlbum != null)
      return this.mAlbum.isTop();
    return false;
  }

  public void setAdIndex(int paramInt)
  {
    this.adIndex = paramInt;
  }

  public void setAdvert(Advert paramAdvert)
  {
    this.mAdvert = paramAdvert;
    this.mType = 1;
  }

  public void setAlbum(AudioRecord paramAudioRecord)
  {
    this.mAlbum = paramAudioRecord;
    this.mType = 4;
  }

  public void setBookFeed(BookFeed paramBookFeed)
  {
    this.mBookFeed = paramBookFeed;
    this.mType = 3;
  }

  public void setBookRecord(BookReadRecord paramBookReadRecord)
  {
    this.mBookRecord = paramBookReadRecord;
    this.mType = 0;
  }

  public void setLastRead(long paramLong)
  {
    this.lastRead = paramLong;
  }

  public void setLastUpdate(long paramLong)
  {
    this.lastUpdate = paramLong;
  }

  public void setTxt(BookFile paramBookFile)
  {
    this.mTxt = paramBookFile;
    this.mType = 2;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.BookShelf
 * JD-Core Version:    0.6.2
 */