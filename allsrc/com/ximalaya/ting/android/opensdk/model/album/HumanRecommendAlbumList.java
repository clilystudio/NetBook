package com.ximalaya.ting.android.opensdk.model.album;

import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;
import java.util.List;

public class HumanRecommendAlbumList extends XimalayaResponse
{
  private List<HumanRecommendAlbum> albumList;

  public List<HumanRecommendAlbum> getAlbumList()
  {
    return this.albumList;
  }

  public void setAlbumList(List<HumanRecommendAlbum> paramList)
  {
    this.albumList = paramList;
  }

  public String toString()
  {
    return "HumanRecommendAlbumList [albumList=" + this.albumList + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.album.HumanRecommendAlbumList
 * JD-Core Version:    0.6.0
 */