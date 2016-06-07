package com.ximalaya.ting.android.opensdk.model.download;

import com.google.gson.annotations.SerializedName;
import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;
import com.ximalaya.ting.android.opensdk.model.album.Album;
import java.util.List;

public class RecommendDownload extends XimalayaResponse
{
  private List<Album> albums;

  @SerializedName("current_page")
  private int currentPage;

  @SerializedName("total_count")
  private int totalCount;

  @SerializedName("total_page")
  private int totalPage;

  public List<Album> getAlbums()
  {
    return this.albums;
  }

  public int getCurrentPage()
  {
    return this.currentPage;
  }

  public int getTotalCount()
  {
    return this.totalCount;
  }

  public int getTotalPage()
  {
    return this.totalPage;
  }

  public void setAlbums(List<Album> paramList)
  {
    this.albums = paramList;
  }

  public void setCurrentPage(int paramInt)
  {
    this.currentPage = paramInt;
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
    return "RecommendDownload [totalPage=" + this.totalPage + ", totalCount=" + this.totalCount + ", currentPage=" + this.currentPage + ", albums=" + this.albums + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.download.RecommendDownload
 * JD-Core Version:    0.6.0
 */