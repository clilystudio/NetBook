package com.ximalaya.ting.android.opensdk.model.album;

import com.google.gson.annotations.SerializedName;
import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;
import java.util.List;

public class RelativeAlbums extends XimalayaResponse
{

  @SerializedName("current_page")
  private int currentPage;

  @SerializedName("reletive_albums")
  private List<Album> relativeAlbumList;

  @SerializedName("total_count")
  private int totalCount;

  @SerializedName("total_page")
  private int totalPage;

  public int getCurrentPage()
  {
    return this.currentPage;
  }

  public List<Album> getRelativeAlbumList()
  {
    return this.relativeAlbumList;
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

  public void setRelativeAlbumList(List<Album> paramList)
  {
    this.relativeAlbumList = paramList;
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
    return "RelativeAlbums [totalPage=" + this.totalPage + ", totalCount=" + this.totalCount + ", currentPage=" + this.currentPage + ", relativeAlbumList=" + this.relativeAlbumList + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.album.RelativeAlbums
 * JD-Core Version:    0.6.0
 */