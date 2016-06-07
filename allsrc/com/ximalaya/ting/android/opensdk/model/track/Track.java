package com.ximalaya.ting.android.opensdk.model.track;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import com.ximalaya.ting.android.opensdk.model.PlayableModel;
import com.ximalaya.ting.android.opensdk.model.album.Announcer;
import com.ximalaya.ting.android.opensdk.model.album.SubordinatedAlbum;

public class Track extends PlayableModel
  implements Parcelable
{
  public static final Parcelable.Creator<Track> CREATOR = new Track.1();

  @SerializedName("subordinated_album")
  private SubordinatedAlbum album;

  @SerializedName("announcer")
  private Announcer announcer;

  @SerializedName("comment_count")
  private int commentCount;

  @SerializedName("cover_url_large")
  private String coverUrlLarge;

  @SerializedName("cover_url_middle")
  private String coverUrlMiddle;

  @SerializedName("cover_url_small")
  private String coverUrlSmall;

  @SerializedName("created_at")
  private long createdAt;

  @SerializedName("download_count")
  private int downloadCount;
  private int downloadSequence;

  @SerializedName("download_size")
  private long downloadSize;
  private int downloadStatus;

  @SerializedName("download_url")
  private String downloadUrl;
  private String downloadedSaveFilePath;
  private long downloadedSize;

  @SerializedName("duration")
  private int duration;
  public Object extra;

  @SerializedName("favorite_count")
  private int favoriteCount;
  private int insertSequence;
  private int lastPlayedMills;

  @SerializedName("order_num")
  private int orderNum;

  @SerializedName("play_count")
  private int playCount;

  @SerializedName("play_size_24_m4a")
  private String playSize24M4a;

  @SerializedName("play_size_32")
  private int playSize32;

  @SerializedName("play_size_64")
  private int playSize64;

  @SerializedName("play_size_64_m4a")
  private String playSize64m4a;

  @SerializedName("play_url_24_m4a")
  private String playUrl24M4a;

  @SerializedName("play_url_32")
  private String playUrl32;

  @SerializedName("play_url_64")
  private String playUrl64;

  @SerializedName("play_url_64_m4a")
  private String playUrl64M4a;

  @SerializedName("source")
  private int source;

  @SerializedName("track_intro")
  private String trackIntro;
  private int trackStatus;

  @SerializedName("track_tags")
  private String trackTags;

  @SerializedName("track_title")
  private String trackTitle;

  @SerializedName("updated_at")
  private long updatedAt;

  public int describeContents()
  {
    return 0;
  }

  public SubordinatedAlbum getAlbum()
  {
    return this.album;
  }

  public Announcer getAnnouncer()
  {
    return this.announcer;
  }

  public int getCommentCount()
  {
    return this.commentCount;
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

  public int getDownloadCount()
  {
    return this.downloadCount;
  }

  public int getDownloadSequence()
  {
    return this.downloadSequence;
  }

  public long getDownloadSize()
  {
    return this.downloadSize;
  }

  public int getDownloadStatus()
  {
    return this.downloadStatus;
  }

  public String getDownloadUrl()
  {
    return this.downloadUrl;
  }

  public String getDownloadedSaveFilePath()
  {
    return this.downloadedSaveFilePath;
  }

  public long getDownloadedSize()
  {
    return this.downloadedSize;
  }

  public int getDuration()
  {
    return this.duration;
  }

  public Object getExtra()
  {
    return this.extra;
  }

  public int getFavoriteCount()
  {
    return this.favoriteCount;
  }

  public int getInsertSequence()
  {
    return this.insertSequence;
  }

  public int getLastPlayedMills()
  {
    return this.lastPlayedMills;
  }

  public int getOrderNum()
  {
    return this.orderNum;
  }

  public int getPlayCount()
  {
    return this.playCount;
  }

  public String getPlaySize24M4a()
  {
    return this.playSize24M4a;
  }

  public int getPlaySize32()
  {
    return this.playSize32;
  }

  public int getPlaySize64()
  {
    return this.playSize64;
  }

  public String getPlaySize64m4a()
  {
    return this.playSize64m4a;
  }

  public String getPlayUrl24M4a()
  {
    return this.playUrl24M4a;
  }

  public String getPlayUrl32()
  {
    return this.playUrl32;
  }

  public String getPlayUrl64()
  {
    return this.playUrl64;
  }

  public String getPlayUrl64M4a()
  {
    return this.playUrl64M4a;
  }

  public int getSource()
  {
    return this.source;
  }

  public String getTrackIntro()
  {
    return this.trackIntro;
  }

  public int getTrackStatus()
  {
    return this.trackStatus;
  }

  public String getTrackTags()
  {
    return this.trackTags;
  }

  public String getTrackTitle()
  {
    return this.trackTitle;
  }

  public long getUpdatedAt()
  {
    return this.updatedAt;
  }

  public void readFromParcel(Parcel paramParcel)
  {
    super.readFromParcel(paramParcel);
    this.trackTitle = paramParcel.readString();
    this.trackTags = paramParcel.readString();
    this.trackIntro = paramParcel.readString();
    this.coverUrlSmall = paramParcel.readString();
    this.coverUrlMiddle = paramParcel.readString();
    this.coverUrlLarge = paramParcel.readString();
    this.announcer = ((Announcer)paramParcel.readParcelable(Announcer.class.getClassLoader()));
    this.duration = paramParcel.readInt();
    this.playCount = paramParcel.readInt();
    this.favoriteCount = paramParcel.readInt();
    this.commentCount = paramParcel.readInt();
    this.downloadCount = paramParcel.readInt();
    this.playUrl32 = paramParcel.readString();
    this.playSize32 = paramParcel.readInt();
    this.playUrl64 = paramParcel.readString();
    this.playSize64 = paramParcel.readInt();
    this.playUrl24M4a = paramParcel.readString();
    this.playSize24M4a = paramParcel.readString();
    this.playUrl64M4a = paramParcel.readString();
    this.playSize64m4a = paramParcel.readString();
    this.orderNum = paramParcel.readInt();
    this.downloadUrl = paramParcel.readString();
    this.downloadSize = paramParcel.readLong();
    this.downloadedSize = paramParcel.readLong();
    this.album = ((SubordinatedAlbum)paramParcel.readParcelable(SubordinatedAlbum.class.getClassLoader()));
    this.source = paramParcel.readInt();
    this.updatedAt = paramParcel.readLong();
    this.createdAt = paramParcel.readLong();
    this.downloadedSaveFilePath = paramParcel.readString();
    this.lastPlayedMills = paramParcel.readInt();
    this.extra = paramParcel.readValue(Object.class.getClassLoader());
  }

  public void setAlbum(SubordinatedAlbum paramSubordinatedAlbum)
  {
    this.album = paramSubordinatedAlbum;
  }

  public void setAnnouncer(Announcer paramAnnouncer)
  {
    this.announcer = paramAnnouncer;
  }

  public void setCommentCount(int paramInt)
  {
    this.commentCount = paramInt;
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

  public void setDownloadCount(int paramInt)
  {
    this.downloadCount = paramInt;
  }

  public void setDownloadSequence(int paramInt)
  {
    this.downloadSequence = paramInt;
  }

  public void setDownloadSize(long paramLong)
  {
    this.downloadSize = paramLong;
  }

  public void setDownloadStatus(int paramInt)
  {
    this.downloadStatus = paramInt;
  }

  public void setDownloadUrl(String paramString)
  {
    this.downloadUrl = paramString;
  }

  public void setDownloadedSaveFilePath(String paramString)
  {
    this.downloadedSaveFilePath = paramString;
  }

  public void setDownloadedSize(long paramLong)
  {
    this.downloadedSize = paramLong;
  }

  public void setDuration(int paramInt)
  {
    this.duration = paramInt;
  }

  public void setExtra(Object paramObject)
  {
    this.extra = paramObject;
  }

  public void setFavoriteCount(int paramInt)
  {
    this.favoriteCount = paramInt;
  }

  public void setInsertSequence(int paramInt)
  {
    this.insertSequence = paramInt;
  }

  public void setLastPlayedMills(int paramInt)
  {
    this.lastPlayedMills = paramInt;
  }

  public void setOrderNum(int paramInt)
  {
    this.orderNum = paramInt;
  }

  public void setPlayCount(int paramInt)
  {
    this.playCount = paramInt;
  }

  public void setPlaySize24M4a(String paramString)
  {
    this.playSize24M4a = paramString;
  }

  public void setPlaySize32(int paramInt)
  {
    this.playSize32 = paramInt;
  }

  public void setPlaySize64(int paramInt)
  {
    this.playSize64 = paramInt;
  }

  public void setPlaySize64m4a(String paramString)
  {
    this.playSize64m4a = paramString;
  }

  public void setPlayUrl24M4a(String paramString)
  {
    this.playUrl24M4a = paramString;
  }

  public void setPlayUrl32(String paramString)
  {
    this.playUrl32 = paramString;
  }

  public void setPlayUrl64(String paramString)
  {
    this.playUrl64 = paramString;
  }

  public void setPlayUrl64M4a(String paramString)
  {
    this.playUrl64M4a = paramString;
  }

  public void setSource(int paramInt)
  {
    this.source = paramInt;
  }

  public void setTrackIntro(String paramString)
  {
    this.trackIntro = paramString;
  }

  public void setTrackStatus(int paramInt)
  {
    this.trackStatus = paramInt;
  }

  public void setTrackTags(String paramString)
  {
    this.trackTags = paramString;
  }

  public void setTrackTitle(String paramString)
  {
    this.trackTitle = paramString;
  }

  public void setUpdatedAt(long paramLong)
  {
    this.updatedAt = paramLong;
  }

  public String toString()
  {
    return "Track [trackTitle=" + this.trackTitle + ", trackTags=" + this.trackTags + ", trackIntro=" + this.trackIntro + ", coverUrlSmall=" + this.coverUrlSmall + ", coverUrlMiddle=" + this.coverUrlMiddle + ", coverUrlLarge=" + this.coverUrlLarge + ", announcer=" + this.announcer + ", duration=" + this.duration + ", playCount=" + this.playCount + ", favoriteCount=" + this.favoriteCount + ", commentCount=" + this.commentCount + ", downloadCount=" + this.downloadCount + ", playUrl32=" + this.playUrl32 + ", playSize32=" + this.playSize32 + ", playUrl64=" + this.playUrl64 + ", playSize64=" + this.playSize64 + ", orderNum=" + this.orderNum + ", downloadUrl=" + this.downloadUrl + ", downloadSize=" + this.downloadSize + ", source=" + this.source + ", updatedAt=" + this.updatedAt + ", album=" + this.album + ", createdAt=" + this.createdAt + ", downloadedSaveFilePath=" + this.downloadedSaveFilePath + ", downloadedSize=" + this.downloadedSize + ", trackStatus=" + this.trackStatus + ", downloadStatus=" + this.downloadStatus + ", downloadSequence=" + this.downloadSequence + ", lastPlayedMills=" + this.lastPlayedMills + ", insertSequence=" + this.insertSequence + ", extra=" + this.extra + "]";
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(this.trackTitle);
    paramParcel.writeString(this.trackTags);
    paramParcel.writeString(this.trackIntro);
    paramParcel.writeString(this.coverUrlSmall);
    paramParcel.writeString(this.coverUrlMiddle);
    paramParcel.writeString(this.coverUrlLarge);
    paramParcel.writeParcelable(this.announcer, 0);
    paramParcel.writeInt(this.duration);
    paramParcel.writeInt(this.playCount);
    paramParcel.writeInt(this.favoriteCount);
    paramParcel.writeInt(this.commentCount);
    paramParcel.writeInt(this.downloadCount);
    paramParcel.writeString(this.playUrl32);
    paramParcel.writeInt(this.playSize32);
    paramParcel.writeString(this.playUrl64);
    paramParcel.writeInt(this.playSize64);
    paramParcel.writeString(this.playUrl24M4a);
    paramParcel.writeString(this.playSize24M4a);
    paramParcel.writeString(this.playUrl64M4a);
    paramParcel.writeString(this.playSize64m4a);
    paramParcel.writeInt(this.orderNum);
    paramParcel.writeString(this.downloadUrl);
    paramParcel.writeLong(this.downloadSize);
    paramParcel.writeLong(this.downloadedSize);
    paramParcel.writeParcelable(this.album, 1);
    paramParcel.writeInt(this.source);
    paramParcel.writeLong(this.updatedAt);
    paramParcel.writeLong(this.createdAt);
    paramParcel.writeString(this.downloadedSaveFilePath);
    paramParcel.writeInt(this.lastPlayedMills);
    paramParcel.writeValue(this.extra);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.track.Track
 * JD-Core Version:    0.6.0
 */