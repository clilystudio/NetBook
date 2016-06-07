package com.ximalaya.ting.android.opensdk.player.service;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;

public class XmPlayerException extends Exception
  implements Parcelable
{
  public static final Parcelable.Creator<XmPlayerException> CREATOR = new XmPlayerException.1();
  private static final long serialVersionUID = 8102305468025663148L;
  private String mCause;
  private int mExtra;
  private int mWhat;

  public XmPlayerException()
  {
    this("");
  }

  public XmPlayerException(int paramInt1, int paramInt2)
  {
    this("Player Status Exception, what = " + paramInt1 + ", extra = " + paramInt2);
    this.mWhat = paramInt1;
    this.mExtra = paramInt2;
  }

  public XmPlayerException(Parcel paramParcel)
  {
    this(paramParcel.readString());
    this.mWhat = paramParcel.readInt();
    this.mExtra = paramParcel.readInt();
  }

  public XmPlayerException(String paramString)
  {
    super(paramString);
    this.mCause = paramString;
  }

  public int describeContents()
  {
    return 0;
  }

  public String getMessage()
  {
    if (!TextUtils.isEmpty(this.mCause))
      return this.mCause;
    return super.getMessage();
  }

  public void readFromParcel(Parcel paramParcel)
  {
    this.mCause = paramParcel.readString();
    this.mWhat = paramParcel.readInt();
    this.mExtra = paramParcel.readInt();
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.mCause);
    paramParcel.writeInt(this.mWhat);
    paramParcel.writeInt(this.mExtra);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.XmPlayerException
 * JD-Core Version:    0.6.0
 */