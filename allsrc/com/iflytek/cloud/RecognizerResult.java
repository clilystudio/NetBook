package com.iflytek.cloud;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class RecognizerResult
  implements Parcelable
{
  public static final Parcelable.Creator<RecognizerResult> CREATOR = new a();
  private String a = "";

  public RecognizerResult(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
  }

  public RecognizerResult(String paramString)
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
 * Qualified Name:     com.iflytek.cloud.RecognizerResult
 * JD-Core Version:    0.6.0
 */