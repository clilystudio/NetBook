package com.ximalaya.ting.android.opensdk.model.live.provinces;

import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;
import java.util.List;

public class ProvinceList extends XimalayaResponse
{
  private List<Province> provinceList;

  public List<Province> getProvinceList()
  {
    return this.provinceList;
  }

  public void setProvinceList(List<Province> paramList)
  {
    this.provinceList = paramList;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.live.provinces.ProvinceList
 * JD-Core Version:    0.6.0
 */