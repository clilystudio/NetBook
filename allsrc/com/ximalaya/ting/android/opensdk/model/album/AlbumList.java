package com.ximalaya.ting.android.opensdk.model.album;

import com.google.gson.annotations.SerializedName;
import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;
import java.util.List;

public class AlbumList extends XimalayaResponse
{
  private List<Album> albums;

  @SerializedName("category_id")
  private int categoryId;

  @SerializedName("current_page")
  private int currentPage;

  @SerializedName("tag_name")
  private String tagName;

  @SerializedName("total_count")
  private int totalCount;

  @SerializedName("total_page")
  private int totalPage;

  public List<Album> getAlbums()
  {
    return this.albums;
  }

  public int getCategoryId()
  {
    return this.categoryId;
  }

  public int getCurrentPage()
  {
    return this.currentPage;
  }

  public String getTagName()
  {
    return this.tagName;
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

  public void setCategoryId(int paramInt)
  {
    this.categoryId = paramInt;
  }

  public void setCurrentPage(int paramInt)
  {
    this.currentPage = paramInt;
  }

  public void setTagName(String paramString)
  {
    this.tagName = paramString;
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
    return "AlbumList [totalPage=" + this.totalPage + ", totalCount=" + this.totalCount + ", categoryId=" + this.categoryId + ", tagName=" + this.tagName + ", currentPage=" + this.currentPage + ", albums=" + this.albums + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.album.AlbumList
 * JD-Core Version:    0.6.0
 */