package com.ximalaya.ting.android.opensdk.model.album;

import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;
import java.util.List;

public class UpdateBatchList extends XimalayaResponse
{
  private List<UpdateBatch> list;

  public List<UpdateBatch> getList()
  {
    return this.list;
  }

  public void setList(List<UpdateBatch> paramList)
  {
    this.list = paramList;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.album.UpdateBatchList
 * JD-Core Version:    0.6.0
 */