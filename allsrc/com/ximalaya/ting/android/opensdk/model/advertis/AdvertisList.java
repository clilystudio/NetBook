package com.ximalaya.ting.android.opensdk.model.advertis;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;
import java.util.ArrayList;
import java.util.List;

public class AdvertisList extends XimalayaResponse
  implements Parcelable
{
  public static final Parcelable.Creator<AdvertisList> CREATOR = new AdvertisList.1();

  @SerializedName("data")
  private List<Advertis> advertisList;
  private String msg;
  private int responseId;
  private int ret = -2;
  private int source;

  public int describeContents()
  {
    return 0;
  }

  public List<Advertis> getAdvertisList()
  {
    return this.advertisList;
  }

  public String getMsg()
  {
    return this.msg;
  }

  public int getResponseId()
  {
    return this.responseId;
  }

  public int getRet()
  {
    return this.ret;
  }

  public int getSource()
  {
    return this.source;
  }

  public void readFromParcel(Parcel paramParcel)
  {
    setResponseId(paramParcel.readInt());
    setRet(paramParcel.readInt());
    setSource(paramParcel.readInt());
    setMsg(paramParcel.readString());
    if (paramParcel.readInt() > 0)
    {
      ArrayList localArrayList = new ArrayList();
      paramParcel.readList(localArrayList, Advertis.class.getClassLoader());
      setAdvertisList(localArrayList);
    }
  }

  public void setAdvertisList(List<Advertis> paramList)
  {
    this.advertisList = paramList;
  }

  public void setMsg(String paramString)
  {
    this.msg = paramString;
  }

  public void setResponseId(int paramInt)
  {
    this.responseId = paramInt;
  }

  public void setRet(int paramInt)
  {
    this.ret = paramInt;
  }

  public void setSource(int paramInt)
  {
    this.source = paramInt;
  }

  public String toString()
  {
    return "AdvertisList [advertisList=" + this.advertisList + ", ret=" + this.ret + ", msg=" + this.msg + ", source=" + this.source + ", responseId=" + this.responseId + "]";
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.responseId);
    paramParcel.writeInt(this.ret);
    paramParcel.writeInt(this.source);
    paramParcel.writeString(this.msg);
    if (this.advertisList == null);
    for (int i = 0; ; i = this.advertisList.size())
    {
      paramParcel.writeInt(i);
      if (i > 0)
        paramParcel.writeList(this.advertisList);
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.advertis.AdvertisList
 * JD-Core Version:    0.6.0
 */