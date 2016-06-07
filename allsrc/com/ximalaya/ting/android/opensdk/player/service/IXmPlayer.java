package com.ximalaya.ting.android.opensdk.player.service;

import android.app.Notification;
import android.os.IInterface;
import com.ximalaya.ting.android.opensdk.model.live.radio.Radio;
import com.ximalaya.ting.android.opensdk.model.track.Track;
import java.util.List;
import java.util.Map;

public abstract interface IXmPlayer extends IInterface
{
  public abstract void clearPlayCache();

  public abstract int getCurrIndex();

  public abstract int getDuration();

  public abstract Map getParam();

  public abstract List<Track> getPlayList();

  public abstract int getPlayListSize();

  public abstract String getPlayMode();

  public abstract int getPlaySourceType();

  public abstract int getPlayerStatus();

  public abstract Radio getRadio();

  public abstract Track getTrack(int paramInt);

  public abstract boolean hasNextSound();

  public abstract boolean hasPreSound();

  public abstract boolean isAdsActive();

  public abstract boolean isOnlineSource();

  public abstract boolean isPlaying();

  public abstract boolean pausePlay();

  public abstract boolean play(int paramInt);

  public abstract boolean playNext();

  public abstract boolean playPre();

  public abstract boolean playRadio(Radio paramRadio);

  public abstract void registeAdsListener(IXmAdsEventDispatcher paramIXmAdsEventDispatcher);

  public abstract void registePlayerListener(IXmPlayerEventDispatcher paramIXmPlayerEventDispatcher);

  public abstract boolean seekTo(int paramInt);

  public abstract void setAppSecret(String paramString);

  public abstract void setDownloadPlayPathCallback(IXmGetDownloadPlayPathCallback paramIXmGetDownloadPlayPathCallback);

  public abstract void setNotification(int paramInt, Notification paramNotification);

  public abstract void setPageSize(int paramInt);

  public abstract boolean setPlayIndex(int paramInt);

  public abstract void setPlayList(Map paramMap, List<Track> paramList);

  public abstract void setPlayMode(String paramString);

  public abstract boolean startPlay();

  public abstract boolean stopPlay();

  public abstract void unregisteAdsListener(IXmAdsEventDispatcher paramIXmAdsEventDispatcher);

  public abstract void unregistePlayerListener(IXmPlayerEventDispatcher paramIXmPlayerEventDispatcher);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.IXmPlayer
 * JD-Core Version:    0.6.0
 */