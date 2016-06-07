package com.ximalaya.ting.android.opensdk.model.live.schedule;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import com.ximalaya.ting.android.opensdk.model.PlayableModel;
import com.ximalaya.ting.android.opensdk.model.live.program.Program;

public class Schedule extends PlayableModel
  implements Parcelable
{
  public static final Parcelable.Creator<Schedule> CREATOR = new Schedule.1();

  @SerializedName("end_time")
  private String endTime;

  @SerializedName("listen_back_url")
  private String listenBackUrl;

  @SerializedName("play_type")
  private int playType;

  @SerializedName("related_program")
  private Program relatedProgram;

  @SerializedName("start_time")
  private String startTime;

  @SerializedName("update_at")
  private long updateAt;

  public int describeContents()
  {
    return 0;
  }

  public String getEndTime()
  {
    return this.endTime;
  }

  public String getListenBackUrl()
  {
    return this.listenBackUrl;
  }

  public int getPlayType()
  {
    return this.playType;
  }

  public Program getRelatedProgram()
  {
    return this.relatedProgram;
  }

  public String getStartTime()
  {
    return this.startTime;
  }

  public long getUpdateAt()
  {
    return this.updateAt;
  }

  public void readFromParcel(Parcel paramParcel)
  {
    super.readFromParcel(paramParcel);
    setStartTime(paramParcel.readString());
    setEndTime(paramParcel.readString());
    setRelatedProgram((Program)paramParcel.readParcelable(Schedule.class.getClassLoader()));
  }

  public void setEndTime(String paramString)
  {
    this.endTime = paramString;
  }

  public void setListenBackUrl(String paramString)
  {
    this.listenBackUrl = paramString;
  }

  public void setPlayType(int paramInt)
  {
    this.playType = paramInt;
  }

  public void setRelatedProgram(Program paramProgram)
  {
    this.relatedProgram = paramProgram;
  }

  public void setStartTime(String paramString)
  {
    this.startTime = paramString;
  }

  public void setUpdateAt(long paramLong)
  {
    this.updateAt = paramLong;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(this.startTime);
    paramParcel.writeString(this.endTime);
    paramParcel.writeParcelable(this.relatedProgram, 0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.live.schedule.Schedule
 * JD-Core Version:    0.6.0
 */