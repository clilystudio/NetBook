package com.iflytek.speech;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class WakeuperResult
  implements Parcelable
{
  public static final Parcelable.Creator<WakeuperResult> CREATOR = new WakeuperResult.1();
  private String json = "";

  public WakeuperResult(Parcel paramParcel)
  {
    this.json = paramParcel.readString();
  }

  public WakeuperResult(String paramString)
  {
    if (paramString != null)
      this.json = paramString;
  }

  public int describeContents()
  {
    return 0;
  }

  public String getResultString()
  {
    return this.json;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.json);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.speech.WakeuperResult
 * JD-Core Version:    0.6.0
 */