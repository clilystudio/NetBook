package com.ximalaya.ting.android.opensdk.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import com.ximalaya.ting.android.opensdk.util.XiMaDataSupport;

public class PlayableModel extends XiMaDataSupport
  implements Parcelable
{
  public static final Parcelable.Creator<PlayableModel> CREATOR = new PlayableModel.1();

  @SerializedName("id")
  private long dataId;
  private String kind;

  public int describeContents()
  {
    return 0;
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    PlayableModel localPlayableModel;
    do
    {
      return true;
      if (paramObject == null)
        return false;
      if (getClass() != paramObject.getClass())
        return false;
      localPlayableModel = (PlayableModel)paramObject;
    }
    while (this.dataId == localPlayableModel.dataId);
    return false;
  }

  public long getDataId()
  {
    return this.dataId;
  }

  public String getKind()
  {
    return this.kind;
  }

  public int hashCode()
  {
    return 31 + (int)(this.dataId ^ this.dataId >>> 32);
  }

  public void readFromParcel(Parcel paramParcel)
  {
    setDataId(paramParcel.readLong());
    setKind(paramParcel.readString());
  }

  public void setDataId(long paramLong)
  {
    this.dataId = paramLong;
  }

  public void setKind(String paramString)
  {
    this.kind = paramString;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(this.dataId);
    paramParcel.writeString(this.kind);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.PlayableModel
 * JD-Core Version:    0.6.0
 */