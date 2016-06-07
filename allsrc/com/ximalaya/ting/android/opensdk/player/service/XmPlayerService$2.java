package com.ximalaya.ting.android.opensdk.player.service;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.ximalaya.ting.android.opensdk.model.advertis.Advertis;
import com.ximalaya.ting.android.opensdk.model.advertis.AdvertisList;

class XmPlayerService$2
  implements IXmAdsStatusListener
{
  private byte[] mLock = new byte[0];

  public void onAdsStartBuffering()
  {
    synchronized (this.mLock)
    {
      int i = XmPlayerService.access$12(this.this$0).beginBroadcast();
      int j = 0;
      while (true)
      {
        if (j >= i)
        {
          XmPlayerService.access$12(this.this$0).finishBroadcast();
          return;
        }
        IXmAdsEventDispatcher localIXmAdsEventDispatcher = (IXmAdsEventDispatcher)XmPlayerService.access$12(this.this$0).getBroadcastItem(j);
        try
        {
          localIXmAdsEventDispatcher.onAdsStartBuffering();
          j++;
        }
        catch (RemoteException localRemoteException)
        {
          while (true)
            localRemoteException.printStackTrace();
        }
      }
    }
  }

  public void onAdsStopBuffering()
  {
    synchronized (this.mLock)
    {
      int i = XmPlayerService.access$12(this.this$0).beginBroadcast();
      int j = 0;
      while (true)
      {
        if (j >= i)
        {
          XmPlayerService.access$12(this.this$0).finishBroadcast();
          return;
        }
        IXmAdsEventDispatcher localIXmAdsEventDispatcher = (IXmAdsEventDispatcher)XmPlayerService.access$12(this.this$0).getBroadcastItem(j);
        try
        {
          localIXmAdsEventDispatcher.onAdsStopBuffering();
          j++;
        }
        catch (RemoteException localRemoteException)
        {
          while (true)
            localRemoteException.printStackTrace();
        }
      }
    }
  }

  public void onCompletePlayAds()
  {
    synchronized (this.mLock)
    {
      int i = XmPlayerService.access$12(this.this$0).beginBroadcast();
      int j = 0;
      while (true)
      {
        if (j >= i)
        {
          XmPlayerService.access$12(this.this$0).finishBroadcast();
          return;
        }
        IXmAdsEventDispatcher localIXmAdsEventDispatcher = (IXmAdsEventDispatcher)XmPlayerService.access$12(this.this$0).getBroadcastItem(j);
        try
        {
          localIXmAdsEventDispatcher.onCompletePlayAds();
          j++;
        }
        catch (RemoteException localRemoteException)
        {
          while (true)
            localRemoteException.printStackTrace();
        }
      }
    }
  }

  public void onError(int paramInt1, int paramInt2)
  {
    synchronized (this.mLock)
    {
      int i = XmPlayerService.access$12(this.this$0).beginBroadcast();
      int j = 0;
      while (true)
      {
        if (j >= i)
        {
          XmPlayerService.access$12(this.this$0).finishBroadcast();
          return;
        }
        IXmAdsEventDispatcher localIXmAdsEventDispatcher = (IXmAdsEventDispatcher)XmPlayerService.access$12(this.this$0).getBroadcastItem(j);
        try
        {
          localIXmAdsEventDispatcher.onError(paramInt1, paramInt2);
          j++;
        }
        catch (RemoteException localRemoteException)
        {
          while (true)
            localRemoteException.printStackTrace();
        }
      }
    }
  }

  public void onGetAdsInfo(AdvertisList paramAdvertisList)
  {
    synchronized (this.mLock)
    {
      int i = XmPlayerService.access$12(this.this$0).beginBroadcast();
      int j = 0;
      while (true)
      {
        if (j >= i)
        {
          XmPlayerService.access$12(this.this$0).finishBroadcast();
          return;
        }
        IXmAdsEventDispatcher localIXmAdsEventDispatcher = (IXmAdsEventDispatcher)XmPlayerService.access$12(this.this$0).getBroadcastItem(j);
        try
        {
          localIXmAdsEventDispatcher.onGetAdsInfo(paramAdvertisList);
          j++;
        }
        catch (RemoteException localRemoteException)
        {
          while (true)
            localRemoteException.printStackTrace();
        }
      }
    }
  }

  public void onStartGetAdsInfo()
  {
    synchronized (this.mLock)
    {
      int i = XmPlayerService.access$12(this.this$0).beginBroadcast();
      int j = 0;
      while (true)
      {
        if (j >= i)
        {
          XmPlayerService.access$12(this.this$0).finishBroadcast();
          return;
        }
        IXmAdsEventDispatcher localIXmAdsEventDispatcher = (IXmAdsEventDispatcher)XmPlayerService.access$12(this.this$0).getBroadcastItem(j);
        try
        {
          localIXmAdsEventDispatcher.onStartGetAdsInfo();
          j++;
        }
        catch (RemoteException localRemoteException)
        {
          while (true)
            localRemoteException.printStackTrace();
        }
      }
    }
  }

  public void onStartPlayAds(Advertis paramAdvertis, int paramInt)
  {
    synchronized (this.mLock)
    {
      int i = XmPlayerService.access$12(this.this$0).beginBroadcast();
      int j = 0;
      while (true)
      {
        if (j >= i)
        {
          XmPlayerService.access$12(this.this$0).finishBroadcast();
          return;
        }
        IXmAdsEventDispatcher localIXmAdsEventDispatcher = (IXmAdsEventDispatcher)XmPlayerService.access$12(this.this$0).getBroadcastItem(j);
        try
        {
          localIXmAdsEventDispatcher.onStartPlayAds(paramAdvertis, paramInt);
          j++;
        }
        catch (RemoteException localRemoteException)
        {
          while (true)
            localRemoteException.printStackTrace();
        }
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.XmPlayerService.2
 * JD-Core Version:    0.6.0
 */