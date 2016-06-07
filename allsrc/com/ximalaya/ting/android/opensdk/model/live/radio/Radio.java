package com.ximalaya.ting.android.opensdk.model.live.radio;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import com.ximalaya.ting.android.opensdk.model.PlayableModel;

public class Radio extends PlayableModel
  implements Parcelable
{
  public static final Parcelable.Creator<Radio> CREATOR = new Radio.1();

  @SerializedName("cover_url_large")
  private String coverUrlLarge;

  @SerializedName("cover_url_small")
  private String coverUrlSmall;

  @SerializedName("end_time")
  private long endTime;

  @SerializedName("program_name")
  private String programName;

  @SerializedName("radio_desc")
  private String radioDesc;

  @SerializedName("radio_name")
  private String radioName;

  @SerializedName("radio_play_count")
  private int radioPlayCount;

  @SerializedName("rate24_aac_url")
  private String rate24AacUrl;

  @SerializedName("rate24_ts_url")
  private String rate24TsUrl;

  @SerializedName("rate64_aac_url")
  private String rate64AacUrl;

  @SerializedName("rate64_ts_url")
  private String rate64TsUrl;

  @SerializedName("schedule_id")
  private long scheduleID;

  @SerializedName("start_time")
  private long startTime;

  @SerializedName("support_bitrates")
  private int[] supportBitrates;

  @SerializedName("update_at")
  private long updateAt;

  public int describeContents()
  {
    return 0;
  }

  public String getCoverUrlLarge()
  {
    return this.coverUrlLarge;
  }

  public String getCoverUrlSmall()
  {
    return this.coverUrlSmall;
  }

  public long getEndTime()
  {
    return this.endTime;
  }

  public String getProgramName()
  {
    return this.programName;
  }

  public String getRadioDesc()
  {
    return this.radioDesc;
  }

  public String getRadioName()
  {
    return this.radioName;
  }

  public int getRadioPlayCount()
  {
    return this.radioPlayCount;
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

  public long getScheduleID()
  {
    return this.scheduleID;
  }

  public long getStartTime()
  {
    return this.startTime;
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
    super.readFromParcel(paramParcel);
    setRadioName(paramParcel.readString());
    setRadioDesc(paramParcel.readString());
    setProgramName(paramParcel.readString());
    setScheduleID(paramParcel.readLong());
    setStartTime(paramParcel.readLong());
    setEndTime(paramParcel.readLong());
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
    setRadioPlayCount(paramParcel.readInt());
    setCoverUrlSmall(paramParcel.readString());
    setCoverUrlLarge(paramParcel.readString());
    setUpdateAt(paramParcel.readLong());
  }

  public void setCoverUrlLarge(String paramString)
  {
    this.coverUrlLarge = paramString;
  }

  public void setCoverUrlSmall(String paramString)
  {
    this.coverUrlSmall = paramString;
  }

  public void setEndTime(long paramLong)
  {
    this.endTime = paramLong;
  }

  public void setProgramName(String paramString)
  {
    this.programName = paramString;
  }

  public void setRadioDesc(String paramString)
  {
    this.radioDesc = paramString;
  }

  public void setRadioName(String paramString)
  {
    this.radioName = paramString;
  }

  public void setRadioPlayCount(int paramInt)
  {
    this.radioPlayCount = paramInt;
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

  public void setScheduleID(long paramLong)
  {
    this.scheduleID = paramLong;
  }

  public void setStartTime(long paramLong)
  {
    this.startTime = paramLong;
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
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(this.radioName);
    paramParcel.writeString(this.radioDesc);
    paramParcel.writeString(this.programName);
    paramParcel.writeLong(this.scheduleID);
    paramParcel.writeLong(this.startTime);
    paramParcel.writeLong(this.endTime);
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
      paramParcel.writeInt(this.radioPlayCount);
      paramParcel.writeString(this.coverUrlSmall);
      paramParcel.writeString(this.coverUrlLarge);
      paramParcel.writeLong(this.updateAt);
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.live.radio.Radio
 * JD-Core Version:    0.6.0
 */