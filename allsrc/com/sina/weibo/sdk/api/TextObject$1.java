package com.sina.weibo.sdk.api;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class TextObject$1
  implements Parcelable.Creator<TextObject>
{
  public final TextObject createFromParcel(Parcel paramParcel)
  {
    return new TextObject(paramParcel);
  }

  public final TextObject[] newArray(int paramInt)
  {
    return new TextObject[paramInt];
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.api.TextObject.1
 * JD-Core Version:    0.6.0
 */