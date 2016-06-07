package com.ximalaya.ting.android.opensdk.model.advertis;

import android.os.Parcel;
import android.os.Parcelable.Creator;

class AdvertisList$1
  implements Parcelable.Creator<AdvertisList>
{
  public AdvertisList createFromParcel(Parcel paramParcel)
  {
    AdvertisList localAdvertisList = new AdvertisList();
    localAdvertisList.readFromParcel(paramParcel);
    return localAdvertisList;
  }

  public AdvertisList[] newArray(int paramInt)
  {
    return new AdvertisList[paramInt];
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.advertis.AdvertisList.1
 * JD-Core Version:    0.6.0
 */