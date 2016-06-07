package com.ximalaya.ting.android.opensdk.model.album;

import com.google.gson.annotations.SerializedName;

public class Album
{

  @SerializedName("album_intro")
  private String albumIntro;

  @SerializedName("album_tags")
  private String albumTags;

  @SerializedName("album_title")
  private String albumTitle;

  @SerializedName("announcer")
  private Announcer announcer;

  @SerializedName("cover_url_large")
  private String coverUrlLarge;

  @SerializedName("cover_url_middle")
  private String coverUrlMiddle;

  @SerializedName("cover_url_small")
  private String coverUrlSmall;

  @SerializedName("created_at")
  private long createdAt;

  @SerializedName("favorite_count")
  private long favoriteCount;
  private long id;

  @SerializedName("include_track_count")
  private long includeTrackCount;

  @SerializedName("is_finished")
  private int isFinished;

  @SerializedName("last_uptrack")
  private LastUpTrack lastUptrack;

  @SerializedName("play_count")
  private long playCount;

  @SerializedName("recommend_track")
  private RecommendTrack recommendTrack;

  @SerializedName("recommend_src")
  private String recommentSrc;
  private long soundLastListenId;

  @SerializedName("updated_at")
  private long updatedAt;

  public String getAlbumIntro()
  {
    return this.albumIntro;
  }

  public String getAlbumTags()
  {
    return this.albumTags;
  }

  public String getAlbumTitle()
  {
    return this.albumTitle;
  }

  public Announcer getAnnouncer()
  {
    return this.announcer;
  }

  public String getCoverUrlLarge()
  {
    return this.coverUrlLarge;
  }

  public String getCoverUrlMiddle()
  {
    return this.coverUrlMiddle;
  }

  public String getCoverUrlSmall()
  {
    return this.coverUrlSmall;
  }

  public long getCreatedAt()
  {
    return this.createdAt;
  }

  public long getFavoriteCount()
  {
    return this.favoriteCount;
  }

  public long getId()
  {
    return this.id;
  }

  public long getIncludeTrackCount()
  {
    return this.includeTrackCount;
  }

  public int getIsFinished()
  {
    return this.isFinished;
  }

  public LastUpTrack getLastUptrack()
  {
    return this.lastUptrack;
  }

  public long getPlayCount()
  {
    return this.playCount;
  }

  public RecommendTrack getRecommendTrack()
  {
    return this.recommendTrack;
  }

  public String getRecommentSrc()
  {
    return this.recommentSrc;
  }

  public long getSoundLastListenId()
  {
    return this.soundLastListenId;
  }

  public long getUpdatedAt()
  {
    return this.updatedAt;
  }

  public void setAlbumIntro(String paramString)
  {
    this.albumIntro = paramString;
  }

  public void setAlbumTags(String paramString)
  {
    this.albumTags = paramString;
  }

  public void setAlbumTitle(String paramString)
  {
    this.albumTitle = paramString;
  }

  public void setAnnouncer(Announcer paramAnnouncer)
  {
    this.announcer = paramAnnouncer;
  }

  public void setCoverUrlLarge(String paramString)
  {
    this.coverUrlLarge = paramString;
  }

  public void setCoverUrlMiddle(String paramString)
  {
    this.coverUrlMiddle = paramString;
  }

  public void setCoverUrlSmall(String paramString)
  {
    this.coverUrlSmall = paramString;
  }

  public void setCreatedAt(long paramLong)
  {
    this.createdAt = paramLong;
  }

  public void setFavoriteCount(long paramLong)
  {
    this.favoriteCount = paramLong;
  }

  public void setId(long paramLong)
  {
    this.id = paramLong;
  }

  public void setIncludeTrackCount(long paramLong)
  {
    this.includeTrackCount = paramLong;
  }

  public void setIsFinished(int paramInt)
  {
    this.isFinished = paramInt;
  }

  public void setLastUptrack(LastUpTrack paramLastUpTrack)
  {
    this.lastUptrack = paramLastUpTrack;
  }

  public void setPlayCount(long paramLong)
  {
    this.playCount = paramLong;
  }

  public void setRecommendTrack(RecommendTrack paramRecommendTrack)
  {
    this.recommendTrack = paramRecommendTrack;
  }

  public void setRecommentSrc(String paramString)
  {
    this.recommentSrc = paramString;
  }

  public void setSoundLastListenId(long paramLong)
  {
    this.soundLastListenId = paramLong;
  }

  public void setUpdatedAt(long paramLong)
  {
    this.updatedAt = paramLong;
  }

  public String toString()
  {
    return "Album [id=" + this.id + ", albumTitle=" + this.albumTitle + ", albumTags=" + this.albumTags + ", albumIntro=" + this.albumIntro + ", coverUrlSmall=" + this.coverUrlSmall + ", coverUrlMiddle=" + this.coverUrlMiddle + ", coverUrlLarge=" + this.coverUrlLarge + ", announcer=" + this.announcer + ", playCount=" + this.playCount + ", favoriteCount=" + this.favoriteCount + ", includeTrackCount=" + this.includeTrackCount + ", lastUptrack=" + this.lastUptrack + ", recommendTrack=" + this.recommendTrack + ", updatedAt=" + this.updatedAt + ", createdAt=" + this.createdAt + ", soundLastListenId=" + this.soundLastListenId + ", isFinished=" + this.isFinished + ", recommentSrc=" + this.recommentSrc + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.album.Album
 * JD-Core Version:    0.6.0
 */