package com.iflytek.cloud;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class p
  implements Parcelable.Creator<UnderstanderResult>
{
  public final UnderstanderResult a(Parcel paramParcel)
  {
    return new UnderstanderResult(paramParcel);
  }

  public final UnderstanderResult[] a(int paramInt)
  {
    return new UnderstanderResult[paramInt];
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.cloud.p
 * JD-Core Version:    0.6.0
 */