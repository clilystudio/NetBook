package com.ximalaya.ting.android.opensdk.model.live.schedule;

import android.os.Parcel;
import android.os.Parcelable.Creator;

class Schedule$1
  implements Parcelable.Creator<Schedule>
{
  public Schedule createFromParcel(Parcel paramParcel)
  {
    Schedule localSchedule = new Schedule();
    localSchedule.readFromParcel(paramParcel);
    return localSchedule;
  }

  public Schedule[] newArray(int paramInt)
  {
    return new Schedule[paramInt];
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.live.schedule.Schedule.1
 * JD-Core Version:    0.6.0
 */