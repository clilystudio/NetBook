package com.ximalaya.ting.android.opensdk.model.ranks;

import com.google.gson.annotations.SerializedName;
import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;
import com.ximalaya.ting.android.opensdk.model.track.Track;
import java.util.List;

public class RankTrackList extends XimalayaResponse
{

  @SerializedName("current_page")
  private int currentPage;

  @SerializedName("total_count")
  private int totalCount;

  @SerializedName("total_page")
  private int totalPage;

  @SerializedName("tracks")
  private List<Track> trackList;

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

  public List<Track> getTrackList()
  {
    return this.trackList;
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

  public void setTrackList(List<Track> paramList)
  {
    this.trackList = paramList;
  }

  public String toString()
  {
    return "RankTrackList [totalPage=" + this.totalPage + ", totalCount=" + this.totalCount + ", currentPage=" + this.currentPage + ", trackList=" + this.trackList + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.ranks.RankTrackList
 * JD-Core Version:    0.6.0
 */