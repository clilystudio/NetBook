package com.ximalaya.ting.android.opensdk.model.word;

import com.google.gson.annotations.SerializedName;
import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;
import java.util.List;

public class SuggestWords extends XimalayaResponse
{

  @SerializedName("albums")
  private List<AlbumResult> albumList;

  @SerializedName("album_total_count")
  private int albumTotalCount;

  @SerializedName("keywords")
  private List<QueryResult> keyWordList;

  @SerializedName("keyword_total_count")
  private int keywordTotalCount;

  public List<AlbumResult> getAlbumList()
  {
    return this.albumList;
  }

  public int getAlbumTotalCount()
  {
    return this.albumTotalCount;
  }

  public List<QueryResult> getKeyWordList()
  {
    return this.keyWordList;
  }

  public int getKeywordTotalCount()
  {
    return this.keywordTotalCount;
  }

  public void setAlbumList(List<AlbumResult> paramList)
  {
    this.albumList = paramList;
  }

  public void setAlbumTotalCount(int paramInt)
  {
    this.albumTotalCount = paramInt;
  }

  public void setKeyWordList(List<QueryResult> paramList)
  {
    this.keyWordList = paramList;
  }

  public void setKeywordTotalCount(int paramInt)
  {
    this.keywordTotalCount = paramInt;
  }

  public String toString()
  {
    return "SuggestWords [albumTotalCount=" + this.albumTotalCount + ", albumList=" + this.albumList + ", keywordTotalCount=" + this.keywordTotalCount + ", keyWordList=" + this.keyWordList + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.word.SuggestWords
 * JD-Core Version:    0.6.0
 */