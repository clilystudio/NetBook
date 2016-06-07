package com.iflytek.speech;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class RecognizerResult$1
  implements Parcelable.Creator<RecognizerResult>
{
  public final RecognizerResult createFromParcel(Parcel paramParcel)
  {
    return new RecognizerResult(paramParcel);
  }

  public final RecognizerResult[] newArray(int paramInt)
  {
    return new RecognizerResult[paramInt];
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.speech.RecognizerResult.1
 * JD-Core Version:    0.6.0
 */