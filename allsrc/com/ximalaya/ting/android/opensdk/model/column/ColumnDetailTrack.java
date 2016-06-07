package com.ximalaya.ting.android.opensdk.model.column;

import com.google.gson.annotations.SerializedName;
import com.ximalaya.ting.android.opensdk.model.track.Track;
import java.util.List;

public class ColumnDetailTrack extends ColumnDetail
{

  @SerializedName("column_items")
  private List<Track> trackList;

  public List<Track> getTrackList()
  {
    return this.trackList;
  }

  public void setTrackList(List<Track> paramList)
  {
    this.trackList = paramList;
  }

  public String toString()
  {
    return "ColumnDetailTrack [trackList=" + this.trackList + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.column.ColumnDetailTrack
 * JD-Core Version:    0.6.0
 */