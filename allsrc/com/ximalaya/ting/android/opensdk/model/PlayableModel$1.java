package com.ximalaya.ting.android.opensdk.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

class PlayableModel$1
  implements Parcelable.Creator<PlayableModel>
{
  public PlayableModel createFromParcel(Parcel paramParcel)
  {
    PlayableModel localPlayableModel = new PlayableModel();
    localPlayableModel.readFromParcel(paramParcel);
    return localPlayableModel;
  }

  public PlayableModel[] newArray(int paramInt)
  {
    return new PlayableModel[paramInt];
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.PlayableModel.1
 * JD-Core Version:    0.6.0
 */