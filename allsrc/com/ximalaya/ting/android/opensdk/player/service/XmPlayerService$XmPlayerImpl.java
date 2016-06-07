package com.ximalaya.ting.android.opensdk.player.service;

import android.app.Notification;
import android.app.Service;
import android.os.RemoteCallbackList;
import android.util.Log;
import com.ximalaya.ting.android.opensdk.datatrasfer.CommonRequest;
import com.ximalaya.ting.android.opensdk.httputil.XimalayaException;
import com.ximalaya.ting.android.opensdk.model.live.radio.Radio;
import com.ximalaya.ting.android.opensdk.model.track.Track;
import com.ximalaya.ting.android.player.PlayerUtil;
import java.util.List;
import java.util.Map;

class XmPlayerService$XmPlayerImpl extends IXmPlayer.Stub
{
  XmPlayerService$XmPlayerImpl(XmPlayerService paramXmPlayerService)
  {
  }

  public void clearPlayCache()
  {
    if (XmPlayerService.access$0(this.this$0) != null)
      PlayerUtil.cleanUpCacheSound(XmPlayerService.access$0(this.this$0).getCurPlayUrl());
  }

  public int getCurrIndex()
  {
    return XmPlayerService.access$3(this.this$0).getCurrIndex();
  }

  public int getDuration()
  {
    return XmPlayerService.access$0(this.this$0).getDuration();
  }

  public Map getParam()
  {
    return XmPlayerService.access$3(this.this$0).getParams();
  }

  public List<Track> getPlayList()
  {
    return XmPlayerService.access$3(this.this$0).getPlayList();
  }

  public int getPlayListSize()
  {
    List localList = XmPlayerService.access$3(this.this$0).getPlayList();
    if (localList == null)
      return 0;
    return localList.size();
  }

  public String getPlayMode()
  {
    return XmPlayerService.access$3(this.this$0).getPlayMode().toString();
  }

  public int getPlaySourceType()
  {
    return XmPlayerService.access$3(this.this$0).getPlaySource();
  }

  public int getPlayerStatus()
  {
    if (XmPlayerService.access$14(this.this$0).isAdsActive())
      return 3;
    return XmPlayerService.access$0(this.this$0).getPlayerState();
  }

  public Radio getRadio()
  {
    return XmPlayerService.access$3(this.this$0).getRadio();
  }

  public Track getTrack(int paramInt)
  {
    if (getPlaySourceType() == 2)
      return (Track)XmPlayerService.access$3(this.this$0).getPlayableModel(paramInt);
    return null;
  }

  public boolean hasNextSound()
  {
    int i = XmPlayerService.access$3(this.this$0).getCurrListSize();
    if (i <= 1);
    do
      return false;
    while (1 + XmPlayerService.access$3(this.this$0).getCurrIndex() >= i);
    return true;
  }

  public boolean hasPreSound()
  {
    if (XmPlayerService.access$3(this.this$0).getCurrListSize() <= 1);
    int i;
    do
    {
      return false;
      i = XmPlayerService.access$3(this.this$0).getCurrIndex();
    }
    while ((i <= 0) || (i - 1 < 0));
    return true;
  }

  public boolean isAdsActive()
  {
    if (XmPlayerService.access$14(this.this$0) != null)
      return XmPlayerService.access$14(this.this$0).isAdsActive();
    return false;
  }

  public boolean isOnlineSource()
  {
    if (XmPlayerService.access$0(this.this$0) != null)
      return XmPlayerService.access$0(this.this$0).isOnlineSource();
    return false;
  }

  public boolean isPlaying()
  {
    return XmPlayerService.getPlayerSrvice().isPlaying();
  }

  public boolean pausePlay()
  {
    return XmPlayerService.getPlayerSrvice().pausePlay();
  }

  public boolean play(int paramInt)
  {
    return XmPlayerService.access$11(XmPlayerService.getPlayerSrvice(), paramInt, true);
  }

  public boolean playNext()
  {
    return XmPlayerService.getPlayerSrvice().playNext();
  }

  public boolean playPre()
  {
    return XmPlayerService.getPlayerSrvice().playPre();
  }

  public boolean playRadio(Radio paramRadio)
  {
    XmPlayerService.access$20(this.this$0).setAudioFocusAtStartState();
    if (XmPlayerService.access$21(this.this$0).isUseSystemPlayer());
    while (true)
    {
      return false;
      if (paramRadio == null)
        continue;
      try
      {
        if (paramRadio.equals(XmPlayerService.access$22(this.this$0)))
          continue;
        XmPlayerService.access$0(this.this$0).stop();
        XmPlayerService.access$3(this.this$0).setRadio(paramRadio);
        XmPlayerService.access$23(this.this$0).onSoundSwitch(0, XmPlayerService.access$3(this.this$0).getLastIndex(), 0);
        XmPlayerService.access$0(this.this$0).initAndPlay(XmPlayerService.access$24(this.this$0, paramRadio), 0);
        XmPlayerService.access$25(this.this$0, paramRadio);
        return true;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
    return false;
  }

  public void registeAdsListener(IXmAdsEventDispatcher paramIXmAdsEventDispatcher)
  {
    if (paramIXmAdsEventDispatcher != null)
      XmPlayerService.access$12(this.this$0).register(paramIXmAdsEventDispatcher);
  }

  public void registePlayerListener(IXmPlayerEventDispatcher paramIXmPlayerEventDispatcher)
  {
    Log.e("XmPlayerService", "registePlayerListener");
    if (paramIXmPlayerEventDispatcher != null)
      XmPlayerService.access$2(this.this$0).register(paramIXmPlayerEventDispatcher);
  }

  public boolean seekTo(int paramInt)
  {
    if (XmPlayerService.access$14(this.this$0).isAdsActive());
    do
      return false;
    while (XmPlayerService.access$3(this.this$0).getPlaySource() == 3);
    return XmPlayerService.access$0(this.this$0).seekTo(paramInt);
  }

  public void setAppSecret(String paramString)
  {
    Log.e("XmPlayerService", "setAppSecret " + paramString);
    XmPlayerService.access$15(this.this$0, paramString);
    CommonRequest.getInstanse().init(XmPlayerService.access$7(this.this$0), XmPlayerService.access$16(this.this$0));
  }

  public void setDownloadPlayPathCallback(IXmGetDownloadPlayPathCallback paramIXmGetDownloadPlayPathCallback)
  {
    XmPlayerService.access$26(this.this$0, paramIXmGetDownloadPlayPathCallback);
  }

  public void setNotification(int paramInt, Notification paramNotification)
  {
    if ((paramNotification != null) && (XmPlayerService.access$17() != null))
    {
      Log.e("XmPlayerService", "setNotification");
      XmPlayerService.access$17().startForeground(paramInt, paramNotification);
      XmPlayerService.access$18(this.this$0, paramNotification);
      XmPlayerService.access$19(this.this$0, paramInt);
    }
  }

  public void setPageSize(int paramInt)
  {
    try
    {
      if (CommonRequest.getInstanse().getDefaultPagesize() != paramInt)
        CommonRequest.getInstanse().setDefaultPagesize(paramInt);
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      localXimalayaException.printStackTrace();
    }
  }

  public boolean setPlayIndex(int paramInt)
  {
    return XmPlayerService.access$11(XmPlayerService.getPlayerSrvice(), paramInt, false);
  }

  public void setPlayList(Map paramMap, List<Track> paramList)
  {
    if (XmPlayerService.access$13(this.this$0, paramList))
      XmPlayerService.access$0(this.this$0).stop();
    XmPlayerService.access$3(this.this$0).setPlayList(paramMap, paramList);
  }

  public void setPlayMode(String paramString)
  {
    XmPlayerService.access$3(this.this$0).setPlayMode(XmPlayListControl.PlayMode.valueOf(paramString));
  }

  public boolean startPlay()
  {
    return XmPlayerService.getPlayerSrvice().startPlay();
  }

  public boolean stopPlay()
  {
    return XmPlayerService.getPlayerSrvice().stopPlay();
  }

  public void unregisteAdsListener(IXmAdsEventDispatcher paramIXmAdsEventDispatcher)
  {
    if (paramIXmAdsEventDispatcher != null)
      XmPlayerService.access$12(this.this$0).unregister(paramIXmAdsEventDispatcher);
  }

  public void unregistePlayerListener(IXmPlayerEventDispatcher paramIXmPlayerEventDispatcher)
  {
    if (paramIXmPlayerEventDispatcher != null)
      XmPlayerService.access$2(this.this$0).unregister(paramIXmPlayerEventDispatcher);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.XmPlayerService.XmPlayerImpl
 * JD-Core Version:    0.6.0
 */