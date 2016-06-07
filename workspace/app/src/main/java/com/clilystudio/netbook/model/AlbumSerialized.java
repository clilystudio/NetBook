package com.clilystudio.netbook.model;

import com.ximalaya.ting.android.opensdk.model.album.Album;
import com.ximalaya.ting.android.opensdk.model.album.Announcer;
import com.ximalaya.ting.android.opensdk.model.album.LastUpTrack;
import java.io.Serializable;

public class AlbumSerialized
  implements Serializable
{
  private String announcer;
  private int id;
  private String intro;
  private String lastTrackTitle;
  private String title;
  private long totalCount;
  private long updateAt;
  private String url;

  public AlbumSerialized(Album paramAlbum)
  {
    this.id = (int)paramAlbum.getId();
    this.title = paramAlbum.getAlbumTitle();
    this.totalCount = paramAlbum.getIncludeTrackCount();
    this.url = paramAlbum.getCoverUrlSmall();
    this.announcer = paramAlbum.getAnnouncer().getNickname();
    this.intro = paramAlbum.getAlbumIntro();
    this.updateAt = paramAlbum.getUpdatedAt();
    this.lastTrackTitle = paramAlbum.getLastUptrack().getTrackTitle();
  }

  public String getAnnouncer()
  {
    return this.announcer;
  }

  public int getId()
  {
    return this.id;
  }

  public String getIntro()
  {
    return this.intro;
  }

  public String getLastTrackTitle()
  {
    return this.lastTrackTitle;
  }

  public String getTitle()
  {
    return this.title;
  }

  public long getTotalCount()
  {
    return this.totalCount;
  }

  public long getUpdateAt()
  {
    return this.updateAt;
  }

  public String getUrl()
  {
    return this.url;
  }

  public void setAnnouncer(String paramString)
  {
    this.announcer = paramString;
  }

  public void setId(int paramInt)
  {
    this.id = paramInt;
  }

  public void setIntro(String paramString)
  {
    this.intro = paramString;
  }

  public void setLastTrackTitle(String paramString)
  {
    this.lastTrackTitle = paramString;
  }

  public void setTitle(String paramString)
  {
    this.title = paramString;
  }

  public void setTotalCount(long paramLong)
  {
    this.totalCount = paramLong;
  }

  public void setUpdateAt(long paramLong)
  {
    this.updateAt = paramLong;
  }

  public void setUrl(String paramString)
  {
    this.url = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.AlbumSerialized
 * JD-Core Version:    0.6.0
 */