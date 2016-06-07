package com.ximalaya.ting.android.opensdk.model.word;

import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;
import java.util.List;

public class HotWordList extends XimalayaResponse
{
  private List<HotWord> hotWordList;

  public List<HotWord> getHotWordList()
  {
    return this.hotWordList;
  }

  public void setHotWordList(List<HotWord> paramList)
  {
    this.hotWordList = paramList;
  }

  public String toString()
  {
    return "HotWordList [hotWordList=" + this.hotWordList + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.word.HotWordList
 * JD-Core Version:    0.6.0
 */