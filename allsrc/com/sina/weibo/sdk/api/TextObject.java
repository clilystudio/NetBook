package com.sina.weibo.sdk.api;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;

public class TextObject
  implements Parcelable
{
  public static final Parcelable.Creator<TextObject> CREATOR = new TextObject.1();
  public String text;

  public TextObject()
  {
  }

  public TextObject(Parcel paramParcel)
  {
    this.text = paramParcel.readString();
  }

  public boolean checkArgs()
  {
    return (!TextUtils.isEmpty(this.text)) && (this.text.length() <= 1024);
  }

  public int describeContents()
  {
    return 0;
  }

  public int getObjType()
  {
    return 1;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.text);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.api.TextObject
 * JD-Core Version:    0.6.0
 */