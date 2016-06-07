package com.ximalaya.ting.android.opensdk.player.service;

import android.os.IInterface;
import com.ximalaya.ting.android.opensdk.model.advertis.Advertis;
import com.ximalaya.ting.android.opensdk.model.advertis.AdvertisList;

public abstract interface IXmAdsEventDispatcher extends IInterface
{
  public abstract void onAdsStartBuffering();

  public abstract void onAdsStopBuffering();

  public abstract void onCompletePlayAds();

  public abstract void onError(int paramInt1, int paramInt2);

  public abstract void onGetAdsInfo(AdvertisList paramAdvertisList);

  public abstract void onStartGetAdsInfo();

  public abstract void onStartPlayAds(Advertis paramAdvertis, int paramInt);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.IXmAdsEventDispatcher
 * JD-Core Version:    0.6.0
 */