package com.ximalaya.ting.android.opensdk.model.advertis;

import android.os.Parcel;
import android.os.Parcelable.Creator;

class Advertis$1
  implements Parcelable.Creator<Advertis>
{
  public Advertis createFromParcel(Parcel paramParcel)
  {
    Advertis localAdvertis = new Advertis();
    localAdvertis.readFromParcel(paramParcel);
    return localAdvertis;
  }

  public Advertis[] newArray(int paramInt)
  {
    return new Advertis[paramInt];
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.advertis.Advertis.1
 * JD-Core Version:    0.6.0
 */