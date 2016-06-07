package com.ximalaya.ting.android.opensdk.player;

import android.app.Notification;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.ximalaya.ting.android.opensdk.model.PlayableModel;
import com.ximalaya.ting.android.opensdk.model.advertis.Advertis;
import com.ximalaya.ting.android.opensdk.model.advertis.AdvertisList;
import com.ximalaya.ting.android.opensdk.model.live.radio.Radio;
import com.ximalaya.ting.android.opensdk.model.live.schedule.Schedule;
import com.ximalaya.ting.android.opensdk.model.track.CommonTrackList;
import com.ximalaya.ting.android.opensdk.model.track.Track;
import com.ximalaya.ting.android.opensdk.player.service.IXmAdsEventDispatcher.Stub;
import com.ximalaya.ting.android.opensdk.player.service.IXmAdsStatusListener;
import com.ximalaya.ting.android.opensdk.player.service.IXmGetDownloadPlayPathCallback;
import com.ximalaya.ting.android.opensdk.player.service.IXmGetDownloadPlayPathCallback.Stub;
import com.ximalaya.ting.android.opensdk.player.service.IXmPlayer;
import com.ximalaya.ting.android.opensdk.player.service.IXmPlayerEventDispatcher.Stub;
import com.ximalaya.ting.android.opensdk.player.service.IXmPlayerStatusListener;
import com.ximalaya.ting.android.opensdk.player.service.XmPlayListControl.PlayMode;
import com.ximalaya.ting.android.opensdk.player.service.XmPlayerException;
import com.ximalaya.ting.android.opensdk.player.service.XmPlayerService;
import com.ximalaya.ting.android.opensdk.util.ModelUtil;
import com.ximalaya.ting.android.player.PlayerUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class XmPlayerManager
{
  private static final int MSG_ADS_BUFFERING_START = 14;
  private static final int MSG_ADS_BUFFERING_STOP = 15;
  private static final int MSG_BUFFER_PROGRESS_CHANGE = 9;
  private static final int MSG_BUFFER_STATUS_CHANGE = 6;
  private static final int MSG_COMPLETE_PLAY_ADS = 17;
  private static final int MSG_GET_ADS_INFO = 13;
  private static final int MSG_PLAY_ADS_ERROR = 18;
  private static final int MSG_PLAY_COMPLETE = 4;
  private static final int MSG_PLAY_ERROR = 10;
  private static final int MSG_PLAY_PAUSE = 2;
  private static final int MSG_PLAY_START = 1;
  private static final int MSG_PLAY_STOP = 3;
  private static final int MSG_PROGRESS_CHANGE = 7;
  private static final int MSG_SOUND_CHANGE = 8;
  private static final int MSG_SOUND_PREPARED = 5;
  private static final int MSG_START_GET_ADS_INFO = 12;
  private static final int MSG_START_PLAY_ADS = 16;
  private static final String TAG = "XmPlayerServiceManager";
  private static XmPlayerManager sInstance;
  private static byte[] sLock = new byte[0];
  private IXmAdsEventDispatcher.Stub mAdsListenerStub = new XmPlayerManager.3(this);
  private List<IXmAdsStatusListener> mAdsStatusListeners = new ArrayList();
  private Context mAppCtx;
  private boolean mBindRet = false;
  private ServiceConnection mConn = new XmPlayerManager.1(this);
  private XmPlayerManager.IConnectListener mConnectListener;
  private boolean mConnected = false;
  private IXmGetDownloadPlayPathCallback.Stub mGetDownloadPlayPathCallbackStub = new XmPlayerManager.2(this);
  private IXmGetDownloadPlayPathCallback mIXmGetDownloadPlayPathCallback;
  private IXmPlayerEventDispatcher.Stub mListenerStub = new XmPlayerManager.4(this);
  private Notification mNotification;
  private int mNotificationId = 0;
  private int mPageSize = 20;
  private List<IXmPlayerStatusListener> mPlayerStatusListeners = new ArrayList();
  private IXmPlayer mPlayerStub;
  private XmPlayerManager.UIHandler mUiHandler;

  private XmPlayerManager(Context paramContext)
  {
    this.mAppCtx = paramContext.getApplicationContext();
    this.mUiHandler = new XmPlayerManager.UIHandler(this, Looper.getMainLooper());
  }

  private boolean checkConnectionStatus()
  {
    if (!this.mConnected)
    {
      init(this.mNotificationId, this.mNotification);
      return false;
    }
    return true;
  }

  public static XmPlayerManager getInstance(Context paramContext)
  {
    if (sInstance == null);
    synchronized (sLock)
    {
      if (sInstance == null)
        sInstance = new XmPlayerManager(paramContext);
      return sInstance;
    }
  }

  public static long getPlayCacheSize()
  {
    return PlayerUtil.getPlayCacheSize();
  }

  private void handleAdsBufferingStart()
  {
    synchronized (this.mAdsStatusListeners)
    {
      Iterator localIterator = this.mAdsStatusListeners.iterator();
      if (!localIterator.hasNext())
        return;
      ((IXmAdsStatusListener)localIterator.next()).onAdsStartBuffering();
    }
  }

  private void handleAdsBufferingStop()
  {
    synchronized (this.mAdsStatusListeners)
    {
      Iterator localIterator = this.mAdsStatusListeners.iterator();
      if (!localIterator.hasNext())
        return;
      ((IXmAdsStatusListener)localIterator.next()).onAdsStopBuffering();
    }
  }

  private void handleBufferChange(int paramInt)
  {
    synchronized (this.mPlayerStatusListeners)
    {
      Iterator localIterator = this.mPlayerStatusListeners.iterator();
      if (!localIterator.hasNext())
        return;
      ((IXmPlayerStatusListener)localIterator.next()).onBufferProgress(paramInt);
    }
  }

  private void handleBufferStatusChange(boolean paramBoolean)
  {
    while (true)
    {
      IXmPlayerStatusListener localIXmPlayerStatusListener;
      synchronized (this.mPlayerStatusListeners)
      {
        Iterator localIterator = this.mPlayerStatusListeners.iterator();
        if (!localIterator.hasNext())
          return;
        localIXmPlayerStatusListener = (IXmPlayerStatusListener)localIterator.next();
        if (paramBoolean)
          localIXmPlayerStatusListener.onBufferingStart();
      }
      localIXmPlayerStatusListener.onBufferingStop();
    }
  }

  private void handleCompletePlayAds()
  {
    synchronized (this.mAdsStatusListeners)
    {
      Iterator localIterator = this.mAdsStatusListeners.iterator();
      if (!localIterator.hasNext())
        return;
      ((IXmAdsStatusListener)localIterator.next()).onCompletePlayAds();
    }
  }

  private void handleGetAdsInfo(AdvertisList paramAdvertisList)
  {
    synchronized (this.mAdsStatusListeners)
    {
      Iterator localIterator = this.mAdsStatusListeners.iterator();
      if (!localIterator.hasNext())
        return;
      ((IXmAdsStatusListener)localIterator.next()).onGetAdsInfo(paramAdvertisList);
    }
  }

  private void handlePlayAdsError(int paramInt1, int paramInt2)
  {
    synchronized (this.mAdsStatusListeners)
    {
      Iterator localIterator = this.mAdsStatusListeners.iterator();
      if (!localIterator.hasNext())
        return;
      ((IXmAdsStatusListener)localIterator.next()).onError(paramInt1, paramInt2);
    }
  }

  private void handlePlayComplete()
  {
    synchronized (this.mPlayerStatusListeners)
    {
      Iterator localIterator = this.mPlayerStatusListeners.iterator();
      if (!localIterator.hasNext())
        return;
      ((IXmPlayerStatusListener)localIterator.next()).onSoundPlayComplete();
    }
  }

  private void handlePlayError(XmPlayerException paramXmPlayerException)
  {
    synchronized (this.mPlayerStatusListeners)
    {
      Iterator localIterator = this.mPlayerStatusListeners.iterator();
      if (!localIterator.hasNext())
        return;
      ((IXmPlayerStatusListener)localIterator.next()).onError(paramXmPlayerException);
    }
  }

  private void handlePlayPause()
  {
    synchronized (this.mPlayerStatusListeners)
    {
      Iterator localIterator = this.mPlayerStatusListeners.iterator();
      if (!localIterator.hasNext())
        return;
      ((IXmPlayerStatusListener)localIterator.next()).onPlayPause();
    }
  }

  private void handlePlayProgressChange(int paramInt1, int paramInt2)
  {
    synchronized (this.mPlayerStatusListeners)
    {
      Iterator localIterator = this.mPlayerStatusListeners.iterator();
      if (!localIterator.hasNext())
        return;
      ((IXmPlayerStatusListener)localIterator.next()).onPlayProgress(paramInt1, paramInt2);
    }
  }

  private void handlePlayStart()
  {
    synchronized (this.mPlayerStatusListeners)
    {
      Iterator localIterator = this.mPlayerStatusListeners.iterator();
      if (!localIterator.hasNext())
        return;
      ((IXmPlayerStatusListener)localIterator.next()).onPlayStart();
    }
  }

  private void handlePlayStop()
  {
    synchronized (this.mPlayerStatusListeners)
    {
      Iterator localIterator = this.mPlayerStatusListeners.iterator();
      if (!localIterator.hasNext())
        return;
      ((IXmPlayerStatusListener)localIterator.next()).onPlayStop();
    }
  }

  private void handleSoundChange(int paramInt1, int paramInt2, int paramInt3)
  {
    synchronized (this.mPlayerStatusListeners)
    {
      Iterator localIterator = this.mPlayerStatusListeners.iterator();
      if (!localIterator.hasNext())
        return;
      ((IXmPlayerStatusListener)localIterator.next()).onSoundSwitch(paramInt1, paramInt2, paramInt3);
    }
  }

  private void handleSoundPrepared()
  {
    synchronized (this.mPlayerStatusListeners)
    {
      Iterator localIterator = this.mPlayerStatusListeners.iterator();
      if (!localIterator.hasNext())
        return;
      ((IXmPlayerStatusListener)localIterator.next()).onSoundPrepared();
    }
  }

  private void handleStartGetAdsInfo()
  {
    synchronized (this.mAdsStatusListeners)
    {
      Iterator localIterator = this.mAdsStatusListeners.iterator();
      if (!localIterator.hasNext())
        return;
      ((IXmAdsStatusListener)localIterator.next()).onStartGetAdsInfo();
    }
  }

  private void handleStartPlayAds(Advertis paramAdvertis, int paramInt)
  {
    synchronized (this.mAdsStatusListeners)
    {
      Iterator localIterator = this.mAdsStatusListeners.iterator();
      if (!localIterator.hasNext())
        return;
      ((IXmAdsStatusListener)localIterator.next()).onStartPlayAds(paramAdvertis, paramInt);
    }
  }

  public void addAdsStatusListener(IXmAdsStatusListener paramIXmAdsStatusListener)
  {
    synchronized (this.mAdsStatusListeners)
    {
      if (!this.mAdsStatusListeners.contains(paramIXmAdsStatusListener))
        this.mAdsStatusListeners.add(paramIXmAdsStatusListener);
      return;
    }
  }

  public void addPlayerStatusListener(IXmPlayerStatusListener paramIXmPlayerStatusListener)
  {
    synchronized (this.mPlayerStatusListeners)
    {
      if (!this.mPlayerStatusListeners.contains(paramIXmPlayerStatusListener))
        this.mPlayerStatusListeners.add(paramIXmPlayerStatusListener);
      return;
    }
  }

  public void clearPlayCache()
  {
    if (!checkConnectionStatus())
      return;
    try
    {
      this.mPlayerStub.clearPlayCache();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
  }

  public CommonTrackList getCommonTrackList()
  {
    if (!checkConnectionStatus())
      return null;
    try
    {
      CommonTrackList localCommonTrackList = new CommonTrackList();
      localCommonTrackList.setParams(this.mPlayerStub.getParam());
      localCommonTrackList.setTracks(this.mPlayerStub.getPlayList());
      return localCommonTrackList;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
    return null;
  }

  public PlayableModel getCurrSound()
  {
    if (!checkConnectionStatus());
    Track localTrack;
    while (true)
    {
      return null;
      try
      {
        int i = this.mPlayerStub.getPlaySourceType();
        if (i == 2)
        {
          localTrack = this.mPlayerStub.getTrack(this.mPlayerStub.getCurrIndex());
          if ((localTrack == null) || (!localTrack.getKind().equals("schedule")))
            break;
          return ModelUtil.trackToSchedule(localTrack);
        }
        else
        {
          if (i != 3)
            continue;
          Radio localRadio = this.mPlayerStub.getRadio();
          return localRadio;
        }
      }
      catch (RemoteException localRemoteException)
      {
        localRemoteException.printStackTrace();
        return null;
      }
    }
    return localTrack;
  }

  public int getCurrentIndex()
  {
    if (!checkConnectionStatus())
      return -1;
    try
    {
      int i = this.mPlayerStub.getCurrIndex();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
    return -1;
  }

  public int getDuration()
  {
    if (!checkConnectionStatus())
      return 0;
    try
    {
      int i = this.mPlayerStub.getDuration();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
    return 0;
  }

  public List<Track> getPlayList()
  {
    if (!checkConnectionStatus())
      return null;
    try
    {
      List localList = this.mPlayerStub.getPlayList();
      return localList;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
    return null;
  }

  public int getPlayListSize()
  {
    if (!checkConnectionStatus())
      return 0;
    try
    {
      int i = this.mPlayerStub.getPlayListSize();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
    return 0;
  }

  public XmPlayListControl.PlayMode getPlayMode()
  {
    if (!checkConnectionStatus())
      return XmPlayListControl.PlayMode.PLAY_MODEL_LIST;
    try
    {
      XmPlayListControl.PlayMode localPlayMode = XmPlayListControl.PlayMode.valueOf(this.mPlayerStub.getPlayMode());
      return localPlayMode;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
    return XmPlayListControl.PlayMode.PLAY_MODEL_LIST;
  }

  public int getPlayerStatus()
  {
    if (!checkConnectionStatus())
      return 7;
    try
    {
      int i = this.mPlayerStub.getPlayerStatus();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
    return 7;
  }

  public Track getTrack(int paramInt)
  {
    if (!checkConnectionStatus())
      return null;
    try
    {
      Track localTrack = this.mPlayerStub.getTrack(paramInt);
      return localTrack;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
    return null;
  }

  public boolean hasNextSound()
  {
    if (!checkConnectionStatus())
      return false;
    try
    {
      boolean bool = this.mPlayerStub.hasNextSound();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
    return true;
  }

  public boolean hasPreSound()
  {
    if (!checkConnectionStatus())
      return false;
    try
    {
      boolean bool = this.mPlayerStub.hasPreSound();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
    return true;
  }

  public void init()
  {
    this.mAppCtx.startService(XmPlayerService.getIntent(this.mAppCtx));
    if (!this.mBindRet)
      this.mBindRet = this.mAppCtx.bindService(XmPlayerService.getIntent(this.mAppCtx), this.mConn, 1);
    Log.e("XmPlayerServiceManager", "Bind ret " + this.mBindRet);
  }

  public void init(int paramInt, Notification paramNotification)
  {
    this.mNotificationId = paramInt;
    this.mNotification = paramNotification;
    init();
  }

  public boolean isAdsActive()
  {
    if (!checkConnectionStatus())
      return false;
    try
    {
      boolean bool = this.mPlayerStub.isAdsActive();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
    return false;
  }

  public boolean isConnected()
  {
    return this.mConnected;
  }

  public boolean isOnlineSource()
  {
    if (!checkConnectionStatus())
      return false;
    try
    {
      boolean bool = this.mPlayerStub.isOnlineSource();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
    return false;
  }

  public boolean isPlaying()
  {
    if (!checkConnectionStatus())
      return false;
    try
    {
      boolean bool = this.mPlayerStub.isPlaying();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
    return false;
  }

  public void pause()
  {
    if (!checkConnectionStatus())
      return;
    try
    {
      this.mPlayerStub.pausePlay();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
  }

  public void play()
  {
    if (!checkConnectionStatus())
      return;
    try
    {
      this.mPlayerStub.startPlay();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
  }

  public void play(int paramInt)
  {
    if (!checkConnectionStatus())
      return;
    try
    {
      this.mPlayerStub.play(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
  }

  public void playList(CommonTrackList paramCommonTrackList, int paramInt)
  {
    if (!checkConnectionStatus());
    do
      return;
    while ((paramCommonTrackList == null) || (paramCommonTrackList.getTracks() == null) || (paramCommonTrackList.getTracks().size() == 0));
    try
    {
      this.mPlayerStub.setPlayList(paramCommonTrackList.getParams(), paramCommonTrackList.getTracks());
      this.mPlayerStub.play(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
  }

  public void playList(List<Track> paramList, int paramInt)
  {
    if (!checkConnectionStatus());
    do
      return;
    while ((paramList == null) || (paramList.size() == 0));
    try
    {
      this.mPlayerStub.setPlayList(null, paramList);
      this.mPlayerStub.play(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
  }

  public void playNext()
  {
    if (!checkConnectionStatus())
      return;
    try
    {
      this.mPlayerStub.playNext();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
  }

  public void playPre()
  {
    if (!checkConnectionStatus())
      return;
    try
    {
      this.mPlayerStub.playPre();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
  }

  public boolean playRadio(Radio paramRadio)
  {
    if (!checkConnectionStatus());
    do
      return false;
    while (paramRadio == null);
    try
    {
      boolean bool = this.mPlayerStub.playRadio(paramRadio);
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
    return false;
  }

  public boolean playSchedule(List<Schedule> paramList, int paramInt)
  {
    if (!checkConnectionStatus());
    do
      return false;
    while (paramList == null);
    try
    {
      this.mPlayerStub.setPlayList(null, ModelUtil.toTrackList(paramList));
      this.mPlayerStub.play(paramInt);
      return true;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
    return false;
  }

  public void release()
  {
    Log.e("XmPlayerServiceManager", "release");
    pause();
    if (this.mBindRet)
    {
      this.mAppCtx.unbindService(this.mConn);
      this.mBindRet = false;
    }
    this.mAppCtx.stopService(XmPlayerService.getIntent(this.mAppCtx));
    this.mNotification = null;
    this.mPlayerStatusListeners.clear();
    this.mConnectListener = null;
    sInstance = null;
  }

  public void removeAdsStatusListener(IXmAdsStatusListener paramIXmAdsStatusListener)
  {
    synchronized (this.mAdsStatusListeners)
    {
      this.mAdsStatusListeners.remove(paramIXmAdsStatusListener);
      return;
    }
  }

  public void removePlayerStatusListener(IXmPlayerStatusListener paramIXmPlayerStatusListener)
  {
    synchronized (this.mPlayerStatusListeners)
    {
      this.mPlayerStatusListeners.remove(paramIXmPlayerStatusListener);
      return;
    }
  }

  public void seekTo(int paramInt)
  {
    if (!checkConnectionStatus())
      return;
    try
    {
      this.mPlayerStub.seekTo(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
  }

  public void seekToByPercent(float paramFloat)
  {
    seekTo((int)(paramFloat * getDuration()));
  }

  public void setAutoLoadPageSizeInner(int paramInt)
  {
    if (this.mPageSize == paramInt);
    do
    {
      return;
      this.mPageSize = paramInt;
    }
    while (!checkConnectionStatus());
    try
    {
      this.mPlayerStub.setPageSize(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
  }

  public void setDownloadPlayPathCallback(IXmGetDownloadPlayPathCallback paramIXmGetDownloadPlayPathCallback)
  {
    this.mIXmGetDownloadPlayPathCallback = paramIXmGetDownloadPlayPathCallback;
  }

  public void setOnConnectedListerner(XmPlayerManager.IConnectListener paramIConnectListener)
  {
    this.mConnectListener = paramIConnectListener;
  }

  public void setPlayList(CommonTrackList paramCommonTrackList, int paramInt)
  {
    if (!checkConnectionStatus());
    do
      return;
    while ((paramCommonTrackList == null) || (paramCommonTrackList.getTracks() == null) || (paramCommonTrackList.getTracks().size() == 0));
    try
    {
      this.mPlayerStub.setPlayList(paramCommonTrackList.getParams(), paramCommonTrackList.getTracks());
      this.mPlayerStub.setPlayIndex(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
  }

  public void setPlayList(List<Track> paramList, int paramInt)
  {
    if (!checkConnectionStatus());
    do
      return;
    while ((paramList == null) || (paramList.size() == 0));
    try
    {
      this.mPlayerStub.setPlayList(null, paramList);
      this.mPlayerStub.setPlayIndex(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
  }

  public void setPlayMode(XmPlayListControl.PlayMode paramPlayMode)
  {
    if (!checkConnectionStatus())
      return;
    try
    {
      this.mPlayerStub.setPlayMode(paramPlayMode.toString());
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
  }

  public void stop()
  {
    if (!checkConnectionStatus())
      return;
    try
    {
      this.mPlayerStub.stopPlay();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.XmPlayerManager
 * JD-Core Version:    0.6.0
 */