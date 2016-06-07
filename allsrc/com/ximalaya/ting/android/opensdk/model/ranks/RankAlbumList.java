package com.ximalaya.ting.android.opensdk.model.ranks;

import com.google.gson.annotations.SerializedName;
import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;
import com.ximalaya.ting.android.opensdk.model.album.Album;
import java.util.List;

public class RankAlbumList extends XimalayaResponse
{

  @SerializedName("current_page")
  private int currentPage;

  @SerializedName("albums")
  private List<Album> rankAlbumList;

  @SerializedName("total_count")
  private int totalCount;

  @SerializedName("total_page")
  private int totalPage;

  public int getCurrentPage()
  {
    return this.currentPage;
  }

  public List<Album> getRankAlbumList()
  {
    return this.rankAlbumList;
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

  public void setRankAlbumList(List<Album> paramList)
  {
    this.rankAlbumList = paramList;
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
    return "RankAlbumList [totalPage=" + this.totalPage + ", totalCount=" + this.totalCount + ", currentPage=" + this.currentPage + ", rankAlbumList=" + this.rankAlbumList + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.ranks.RankAlbumList
 * JD-Core Version:    0.6.0
 */