package com.sina.weibo.sdk.api;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class WebpageObject$1
  implements Parcelable.Creator<WebpageObject>
{
  public final WebpageObject createFromParcel(Parcel paramParcel)
  {
    return new WebpageObject(paramParcel);
  }

  public final WebpageObject[] newArray(int paramInt)
  {
    return new WebpageObject[paramInt];
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.api.WebpageObject.1
 * JD-Core Version:    0.6.0
 */