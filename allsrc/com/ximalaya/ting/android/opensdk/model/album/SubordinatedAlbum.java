package com.ximalaya.ting.android.opensdk.model.album;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import com.ximalaya.ting.android.opensdk.util.XiMaDataSupport;

public class SubordinatedAlbum extends XiMaDataSupport
  implements Parcelable
{
  public static final Parcelable.Creator<SubordinatedAlbum> CREATOR = new SubordinatedAlbum.1();

  @SerializedName("id")
  private long albumId;

  @SerializedName("album_title")
  private String albumTitle;

  @SerializedName("cover_url_large")
  private String coverUrlLarge;

  @SerializedName("cover_url_middle")
  private String coverUrlMiddle;

  @SerializedName("cover_url_small")
  private String coverUrlSmall;

  public int describeContents()
  {
    return 0;
  }

  public long getAlbumId()
  {
    return this.albumId;
  }

  public String getAlbumTitle()
  {
    return this.albumTitle;
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

  public void readFromParcel(Parcel paramParcel)
  {
    this.albumId = paramParcel.readLong();
    this.albumTitle = paramParcel.readString();
    this.coverUrlSmall = paramParcel.readString();
    this.coverUrlMiddle = paramParcel.readString();
    this.coverUrlLarge = paramParcel.readString();
  }

  public void setAlbumId(long paramLong)
  {
    this.albumId = paramLong;
  }

  public void setAlbumTitle(String paramString)
  {
    this.albumTitle = paramString;
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

  public String toString()
  {
    return "SubordinatedAlbum [albumId=" + this.albumId + ", albumTitle=" + this.albumTitle + ", coverUrlSmall=" + this.coverUrlSmall + ", coverUrlMiddle=" + this.coverUrlMiddle + ", coverUrlLarge=" + this.coverUrlLarge + "]";
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(this.albumId);
    paramParcel.writeString(this.albumTitle);
    paramParcel.writeString(this.coverUrlSmall);
    paramParcel.writeString(this.coverUrlMiddle);
    paramParcel.writeString(this.coverUrlLarge);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.album.SubordinatedAlbum
 * JD-Core Version:    0.6.0
 */