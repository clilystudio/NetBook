package com.ximalaya.ting.android.opensdk.model.banner;

import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;
import java.util.List;

public class DiscoveryBannerList extends XimalayaResponse
{
  private List<Banner> bannerList;

  public List<Banner> getBannerList()
  {
    return this.bannerList;
  }

  public void setBannerList(List<Banner> paramList)
  {
    this.bannerList = paramList;
  }

  public String toString()
  {
    return "BannerList [bannerList=" + this.bannerList + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.banner.DiscoveryBannerList
 * JD-Core Version:    0.6.0
 */