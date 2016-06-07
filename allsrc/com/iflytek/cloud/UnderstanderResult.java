package com.iflytek.cloud;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class UnderstanderResult
  implements Parcelable
{
  public static final Parcelable.Creator<UnderstanderResult> CREATOR = new p();
  private String a = "";

  public UnderstanderResult(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
  }

  public UnderstanderResult(String paramString)
  {
    if (paramString != null)
      this.a = paramString;
  }

  public int describeContents()
  {
    return 0;
  }

  public String getResultString()
  {
    return this.a;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.cloud.UnderstanderResult
 * JD-Core Version:    0.6.0
 */