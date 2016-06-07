package com.ximalaya.ting.android.opensdk.model.track;

import android.os.Parcel;
import android.os.Parcelable.Creator;

class Track$1
  implements Parcelable.Creator<Track>
{
  public Track createFromParcel(Parcel paramParcel)
  {
    Track localTrack = new Track();
    localTrack.readFromParcel(paramParcel);
    return localTrack;
  }

  public Track[] newArray(int paramInt)
  {
    return new Track[paramInt];
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.track.Track.1
 * JD-Core Version:    0.6.0
 */