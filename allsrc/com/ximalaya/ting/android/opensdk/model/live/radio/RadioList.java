package com.ximalaya.ting.android.opensdk.model.live.radio;

import com.google.gson.annotations.SerializedName;
import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;
import java.util.List;

public class RadioList extends XimalayaResponse
{

  @SerializedName("current_page")
  private int currentPage;
  private List<Radio> radios;

  @SerializedName("total_count")
  private int totalCount;

  @SerializedName("total_page")
  private int totalPage;

  public int getCurrentPage()
  {
    return this.currentPage;
  }

  public List<Radio> getRadios()
  {
    return this.radios;
  }

  public int getTotalCount()
  {
    return this.totalCount;
  }

  public int getTotalPage()
  {
    return this.totalPage;
  }

  public void setCurrentPage(int paramInt)
  {
    this.currentPage = paramInt;
  }

  public void setRadios(List<Radio> paramList)
  {
    this.radios = paramList;
  }

  public void setTotalCount(int paramInt)
  {
    this.totalCount = paramInt;
  }

  public void setTotalPage(int paramInt)
  {
    this.totalPage = paramInt;
  }

  public String toString()
  {
    return "RadioList [totalPage=" + this.totalPage + ", totalCount=" + this.totalCount + ", currentPage=" + this.currentPage + ", radios=" + this.radios + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.live.radio.RadioList
 * JD-Core Version:    0.6.0
 */