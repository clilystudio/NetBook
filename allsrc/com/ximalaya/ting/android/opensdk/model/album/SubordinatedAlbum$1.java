package com.ximalaya.ting.android.opensdk.model.album;

import android.os.Parcel;
import android.os.Parcelable.Creator;

class SubordinatedAlbum$1
  implements Parcelable.Creator<SubordinatedAlbum>
{
  public SubordinatedAlbum createFromParcel(Parcel paramParcel)
  {
    SubordinatedAlbum localSubordinatedAlbum = new SubordinatedAlbum();
    localSubordinatedAlbum.readFromParcel(paramParcel);
    return localSubordinatedAlbum;
  }

  public SubordinatedAlbum[] newArray(int paramInt)
  {
    return new SubordinatedAlbum[paramInt];
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.album.SubordinatedAlbum.1
 * JD-Core Version:    0.6.0
 */