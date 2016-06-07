package com.ximalaya.ting.android.opensdk.model.album;

import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;
import java.util.List;

public class BatchAlbumList extends XimalayaResponse
{
  private List<Album> albums;

  public List<Album> getAlbums()
  {
    return this.albums;
  }

  public void setAlbums(List<Album> paramList)
  {
    this.albums = paramList;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.album.BatchAlbumList
 * JD-Core Version:    0.6.0
 */