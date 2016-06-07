package com.ximalaya.ting.android.opensdk.model.ranks;

import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;
import java.util.List;

public class RankList extends XimalayaResponse
{
  private List<Rank> rankList;

  public List<Rank> getRankList()
  {
    return this.rankList;
  }

  public void setRankList(List<Rank> paramList)
  {
    this.rankList = paramList;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.ranks.RankList
 * JD-Core Version:    0.6.0
 */