package com.ximalaya.ting.android.opensdk.model.column;

import com.google.gson.annotations.SerializedName;
import com.ximalaya.ting.android.opensdk.model.album.Album;
import java.util.List;

public class ColumnDetailAlbum extends ColumnDetail
{

  @SerializedName("column_items")
  private List<Album> albumList;

  public List<Album> getAlbumList()
  {
    return this.albumList;
  }

  public void setAlbumList(List<Album> paramList)
  {
    this.albumList = paramList;
  }

  public String toString()
  {
    return "ColumnDetailAlbum [albumList=" + this.albumList + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.column.ColumnDetailAlbum
 * JD-Core Version:    0.6.0
 */