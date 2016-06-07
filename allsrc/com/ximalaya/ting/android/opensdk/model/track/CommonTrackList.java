package com.ximalaya.ting.android.opensdk.model.track;

import com.google.gson.annotations.SerializedName;
import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class CommonTrackList extends XimalayaResponse
{
  private Map<String, String> params;

  @SerializedName("total_count")
  private int totalCount;

  @SerializedName("total_page")
  private int totalPage;
  private List<Track> tracks;

  public static CommonTrackList newInstance()
  {
    CommonTrackList localCommonTrackList = new CommonTrackList();
    localCommonTrackList.setTracks(new ArrayList());
    return localCommonTrackList;
  }

  public Map<String, String> getParams()
  {
    return this.params;
  }

  public int getTotalCount()
  {
    return this.totalCount;
  }

  public int getTotalPage()
  {
    return this.totalPage;
  }

  public List<Track> getTracks()
  {
    return this.tracks;
  }

  public void setParams(Map<String, String> paramMap)
  {
    this.params = paramMap;
  }

  public void setTotalCount(int paramInt)
  {
    this.totalCount = paramInt;
  }

  public void setTotalPage(int paramInt)
  {
    this.totalPage = paramInt;
  }

  public void setTracks(List<Track> paramList)
  {
    this.tracks = paramList;
  }

  public String toString()
  {
    return "CommonTrackList [tracks=" + this.tracks + ", params=" + this.params + ", totalCount=" + this.totalCount + ", totalPage=" + this.totalPage + "]";
  }

  public void updateCommonParams(CommonTrackList paramCommonTrackList)
  {
    this.params = paramCommonTrackList.params;
    this.totalCount = paramCommonTrackList.totalCount;
    this.totalPage = paramCommonTrackList.totalPage;
  }

  public void updateCommonTrackList(CommonTrackList paramCommonTrackList)
  {
    this.params = paramCommonTrackList.params;
    this.totalCount = paramCommonTrackList.totalCount;
    this.totalPage = paramCommonTrackList.totalPage;
    if (this.tracks != null)
    {
      this.tracks.addAll(paramCommonTrackList.tracks);
      return;
    }
    this.tracks = paramCommonTrackList.tracks;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.track.CommonTrackList
 * JD-Core Version:    0.6.0
 */