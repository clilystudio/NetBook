package com.ximalaya.ting.android.opensdk.model.album;

import android.os.Parcel;
import android.os.Parcelable.Creator;

class Announcer$1
  implements Parcelable.Creator<Announcer>
{
  public Announcer createFromParcel(Parcel paramParcel)
  {
    Announcer localAnnouncer = new Announcer();
    localAnnouncer.readFromParcel(paramParcel);
    return localAnnouncer;
  }

  public Announcer[] newArray(int paramInt)
  {
    return new Announcer[paramInt];
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.album.Announcer.1
 * JD-Core Version:    0.6.0
 */