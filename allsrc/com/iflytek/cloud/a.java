package com.iflytek.cloud;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class a
  implements Parcelable.Creator<RecognizerResult>
{
  public final RecognizerResult a(Parcel paramParcel)
  {
    return new RecognizerResult(paramParcel);
  }

  public final RecognizerResult[] a(int paramInt)
  {
    return new RecognizerResult[paramInt];
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.cloud.a
 * JD-Core Version:    0.6.0
 */