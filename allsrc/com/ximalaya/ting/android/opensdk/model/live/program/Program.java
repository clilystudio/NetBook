package com.ximalaya.ting.android.opensdk.model.live.program;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import com.ximalaya.ting.android.opensdk.model.live.schedule.LiveAnnouncer;
import java.util.ArrayList;
import java.util.List;

public class Program
  implements Parcelable
{
  public static final Parcelable.Creator<Program> CREATOR = new Program.1();

  @SerializedName("live_announcers")
  private List<LiveAnnouncer> announcerList;

  @SerializedName("back_pic_url")
  private String backPicUrl;

  @SerializedName("id")
  private long programId;

  @SerializedName("program_name")
  private String programName;

  @SerializedName("rate24_aac_url")
  private String rate24AacUrl;

  @SerializedName("rate24_ts_url")
  private String rate24TsUrl;

  @SerializedName("rate64_aac_url")
  private String rate64AacUrl;

  @SerializedName("rate64_ts_url")
  private String rate64TsUrl;

  @SerializedName("support_bitrates")
  private int[] supportBitrates;

  @SerializedName("update_at")
  private long updateAt;

  public int describeContents()
  {
    return 0;
  }

  public List<LiveAnnouncer> getAnnouncerList()
  {
    return this.announcerList;
  }

  public String getBackPicUrl()
  {
    return this.backPicUrl;
  }

  public long getProgramId()
  {
    return this.programId;
  }

  public String getProgramName()
  {
    return this.programName;
  }

  public String getRate24AacUrl()
  {
    return this.rate24AacUrl;
  }

  public String getRate24TsUrl()
  {
    return this.rate24TsUrl;
  }

  public String getRate64AacUrl()
  {
    return this.rate64AacUrl;
  }

  public String getRate64TsUrl()
  {
    return this.rate64TsUrl;
  }

  public int[] getSupportBitrates()
  {
    return this.supportBitrates;
  }

  public long getUpdateAt()
  {
    return this.updateAt;
  }

  public void readFromParcel(Parcel paramParcel)
  {
    setProgramId(paramParcel.readLong());
    setProgramName(paramParcel.readString());
    setBackPicUrl(paramParcel.readString());
    int i = paramParcel.readInt();
    if (i > 0)
    {
      int[] arrayOfInt = new int[i];
      paramParcel.readIntArray(arrayOfInt);
      setSupportBitrates(arrayOfInt);
    }
    setRate24AacUrl(paramParcel.readString());
    setRate24TsUrl(paramParcel.readString());
    setRate64AacUrl(paramParcel.readString());
    setRate64TsUrl(paramParcel.readString());
    ArrayList localArrayList = new ArrayList();
    paramParcel.readList(localArrayList, LiveAnnouncer.class.getClassLoader());
    setAnnouncerList(localArrayList);
    setUpdateAt(paramParcel.readInt());
  }

  public void setAnnouncerList(List<LiveAnnouncer> paramList)
  {
    this.announcerList = paramList;
  }

  public void setBackPicUrl(String paramString)
  {
    this.backPicUrl = paramString;
  }

  public void setProgramId(long paramLong)
  {
    this.programId = paramLong;
  }

  public void setProgramName(String paramString)
  {
    this.programName = paramString;
  }

  public void setRate24AacUrl(String paramString)
  {
    this.rate24AacUrl = paramString;
  }

  public void setRate24TsUrl(String paramString)
  {
    this.rate24TsUrl = paramString;
  }

  public void setRate64AacUrl(String paramString)
  {
    this.rate64AacUrl = paramString;
  }

  public void setRate64TsUrl(String paramString)
  {
    this.rate64TsUrl = paramString;
  }

  public void setSupportBitrates(int[] paramArrayOfInt)
  {
    this.supportBitrates = paramArrayOfInt;
  }

  public void setUpdateAt(long paramLong)
  {
    this.updateAt = paramLong;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(this.programId);
    paramParcel.writeString(this.programName);
    paramParcel.writeString(this.backPicUrl);
    if (this.supportBitrates == null);
    for (int i = 0; ; i = this.supportBitrates.length)
    {
      paramParcel.writeInt(i);
      if (i > 0)
        paramParcel.writeIntArray(this.supportBitrates);
      paramParcel.writeString(this.rate24AacUrl);
      paramParcel.writeString(this.rate24TsUrl);
      paramParcel.writeString(this.rate64AacUrl);
      paramParcel.writeString(this.rate64TsUrl);
      paramParcel.writeList(this.announcerList);
      paramParcel.writeLong(this.updateAt);
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.live.program.Program
 * JD-Core Version:    0.6.0
 */