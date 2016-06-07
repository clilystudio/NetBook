package com.ximalaya.ting.android.opensdk.model.album;

import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;
import java.util.List;

public class HotAggregationList extends XimalayaResponse
{
  private List<HotAggregation> list;

  public List<HotAggregation> getList()
  {
    return this.list;
  }

  public void setList(List<HotAggregation> paramList)
  {
    this.list = paramList;
  }

  public String toString()
  {
    return "HotAggregationList [list=" + this.list + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.album.HotAggregationList
 * JD-Core Version:    0.6.0
 */