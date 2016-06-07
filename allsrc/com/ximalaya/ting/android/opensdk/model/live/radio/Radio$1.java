package com.ximalaya.ting.android.opensdk.model.live.radio;

import android.os.Parcel;
import android.os.Parcelable.Creator;

class Radio$1
  implements Parcelable.Creator<Radio>
{
  public Radio createFromParcel(Parcel paramParcel)
  {
    Radio localRadio = new Radio();
    localRadio.readFromParcel(paramParcel);
    return localRadio;
  }

  public Radio[] newArray(int paramInt)
  {
    return new Radio[paramInt];
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.live.radio.Radio.1
 * JD-Core Version:    0.6.0
 */