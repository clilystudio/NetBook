package com.ximalaya.ting.android.opensdk.player.service;

import android.annotation.SuppressLint;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.media.AudioManager;
import android.media.RemoteControlClient;
import android.os.Build.VERSION;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.ximalaya.ting.android.opensdk.model.PlayableModel;
import com.ximalaya.ting.android.opensdk.model.live.radio.Radio;
import com.ximalaya.ting.android.opensdk.model.track.Track;
import com.ximalaya.ting.android.opensdk.player.receive.WireControlReceiver;
import java.io.File;
import java.util.List;

public class XmPlayerService extends Service
{
  private static final int COMPLETE_OFFSET = 5000;
  private static final String TAG = "XmPlayerService";
  private static Service mService;
  private RemoteCallbackList<IXmAdsEventDispatcher> mAdsDispatcher = new RemoteCallbackList();
  private IXmAdsStatusListener mAdsListener = new XmPlayerService.2(this);
  private XmAdsManager mAdsManager;
  private Context mAppCtx;
  private String mAppSecret;
  private IXmGetDownloadPlayPathCallback mIXmGetDownloadPlayPathCallback;
  private int mLastDuration;
  private PlayableModel mLastModel;
  private XmPlayListControl mListControl;
  private Notification mNotification;
  private int mNotificationId;
  private NotificationManager mNotificationManager;
  private SharedPreferences mPlayHistory;
  private XmPlayerAudioFocusControl mPlayerAudioFocusControl;
  private XmPlayerConfig mPlayerConfig;
  private XmPlayerControl mPlayerControl;
  private RemoteCallbackList<IXmPlayerEventDispatcher> mPlayerDispatcher = new RemoteCallbackList();
  private XmPlayerService.XmPlayerImpl mPlayerImpl;
  private IXmPlayerStatusListener mPlayerStatusListener = new XmPlayerService.1(this);
  private RemoteControlClient mRemoteControlClient;
  private XmStatisticsManager mStatisticsManager;
  private ComponentName mediaButtonReceiver;
  private WireControlReceiver wireControlReceiver;

  public static final Intent getIntent(Context paramContext)
  {
    return new Intent(paramContext, XmPlayerService.class);
  }

  public static XmPlayerService getPlayerSrvice()
  {
    return (XmPlayerService)mService;
  }

  private String getRadioUrl(Radio paramRadio)
  {
    if (this.mPlayerConfig.isUseSystemPlayer())
    {
      if ((this.mPlayerConfig.isUseRadioHighBitrate()) && (!TextUtils.isEmpty(paramRadio.getRate64TsUrl())))
        return paramRadio.getRate64TsUrl();
      return paramRadio.getRate24TsUrl();
    }
    if ((this.mPlayerConfig.isUseRadioHighBitrate()) && (!TextUtils.isEmpty(paramRadio.getRate64AacUrl())))
      return paramRadio.getRate64AacUrl();
    return paramRadio.getRate24AacUrl();
  }

  private int getSoundHistoryPos(long paramLong)
  {
    boolean bool1 = this.mPlayerConfig.isBreakpointResume();
    int i = 0;
    if (bool1)
    {
      boolean bool2 = paramLong < 0L;
      i = 0;
      if (bool2)
        i = this.mPlayHistory.getInt(String.valueOf(paramLong), 0);
    }
    return i;
  }

  private String getTrackUrl(Track paramTrack)
  {
    if (this.mIXmGetDownloadPlayPathCallback != null);
    try
    {
      String str2 = this.mIXmGetDownloadPlayPathCallback.getDownloadPlayPath(paramTrack);
      str1 = str2;
      if (!TextUtils.isEmpty(str1))
        try
        {
          boolean bool = new File(str1).exists();
          if (bool)
            return str1;
        }
        catch (Exception localException)
        {
        }
      if ((this.mPlayerConfig.isUseTrackHighBitrate()) && (!TextUtils.isEmpty(paramTrack.getPlayUrl64())))
        return paramTrack.getPlayUrl64();
      return paramTrack.getPlayUrl32();
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
        String str1 = null;
    }
  }

  private boolean isNewList(List<? extends PlayableModel> paramList)
  {
    return (this.mLastModel == null) || (paramList == null) || (!paramList.contains(this.mLastModel));
  }

  private boolean play(int paramInt, boolean paramBoolean)
  {
    boolean bool1;
    if ((paramInt >= 0) && (paramInt < this.mListControl.getCurrListSize()))
    {
      try
      {
        int i = this.mPlayerControl.getCurrentPos();
        this.mListControl.setCurrIndex(paramInt);
        PlayableModel localPlayableModel = this.mListControl.getPlayableModel(paramInt);
        if (localPlayableModel == null)
        {
          this.mLastModel = null;
          return false;
        }
        if (!localPlayableModel.equals(this.mLastModel))
        {
          this.mPlayerControl.pause();
          this.mPlayerStatusListener.onSoundSwitch(paramInt, this.mListControl.getLastIndex(), i);
          this.mLastModel = localPlayableModel;
          return playTrackPrivate(localPlayableModel, paramBoolean);
        }
        if (this.mAdsManager.isAdsActive())
          return false;
        bool1 = this.mPlayerControl.play();
        if (bool1)
          break label154;
        boolean bool2 = playTrackPrivate(this.mLastModel, paramBoolean);
        return bool2;
      }
      catch (Exception localException)
      {
      }
    }
    else
    {
      this.mLastModel = null;
      bool1 = false;
    }
    label154: return bool1;
  }

  private void playTrack(Track paramTrack, boolean paramBoolean)
  {
    int i = getSoundHistoryPos(paramTrack.getDataId());
    if (paramBoolean)
    {
      this.mPlayerControl.initAndPlay(getTrackUrl(paramTrack), i);
      return;
    }
    this.mPlayerControl.init(getTrackUrl(paramTrack), i);
  }

  private boolean playTrackPrivate(PlayableModel paramPlayableModel, boolean paramBoolean)
  {
    this.mPlayerAudioFocusControl.setAudioFocusAtStartState();
    if ((paramPlayableModel instanceof Track))
    {
      Track localTrack = (Track)paramPlayableModel;
      if (paramBoolean)
      {
        this.mAdsManager.playAds(localTrack, new XmPlayerService.3(this, localTrack));
        return true;
      }
      try
      {
        playTrack(localTrack, false);
        return true;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return true;
      }
    }
    if ((paramPlayableModel instanceof Radio))
    {
      Radio localRadio = (Radio)paramPlayableModel;
      this.mPlayerControl.init(getRadioUrl(localRadio), 0);
      return true;
    }
    return false;
  }

  @SuppressLint({"NewApi"})
  private void saveSoundHistoryPos(long paramLong, int paramInt)
  {
    if (paramLong <= 0L)
      return;
    SharedPreferences.Editor localEditor = this.mPlayHistory.edit();
    localEditor.putInt(String.valueOf(paramLong), paramInt);
    if (Build.VERSION.SDK_INT >= 9)
    {
      localEditor.apply();
      return;
    }
    localEditor.commit();
  }

  public XmPlayerService.XmPlayerImpl getPlayerImpl()
  {
    return this.mPlayerImpl;
  }

  public boolean isPlaying()
  {
    if (this.mPlayerControl != null);
    for (boolean bool1 = this.mPlayerControl.isPlaying(); ; bool1 = false)
    {
      if (this.mAdsManager != null);
      for (boolean bool2 = this.mAdsManager.isAdsPlaying(); ; bool2 = false)
        return (bool1) || (bool2);
    }
  }

  public IBinder onBind(Intent paramIntent)
  {
    Log.e("XmPlayerService", "onBind " + this.mPlayerImpl.hashCode());
    return this.mPlayerImpl;
  }

  public void onCreate()
  {
    super.onCreate();
    if (mService == null)
      mService = this;
    if (this.mAppCtx == null)
      this.mAppCtx = getApplicationContext();
    if (this.mPlayerConfig == null)
      this.mPlayerConfig = XmPlayerConfig.getInstance(this.mAppCtx);
    if (this.mPlayerControl == null)
    {
      this.mPlayerControl = new XmPlayerControl(this.mAppCtx);
      this.mPlayerControl.setPlayerStatusListener(this.mPlayerStatusListener);
    }
    if (this.mListControl == null)
      this.mListControl = new XmPlayListControl();
    if (this.mPlayerImpl == null)
      this.mPlayerImpl = new XmPlayerService.XmPlayerImpl(this);
    if (this.mPlayHistory == null)
      this.mPlayHistory = getSharedPreferences("play_history_record", 0);
    if (this.mPlayerAudioFocusControl == null)
      this.mPlayerAudioFocusControl = new XmPlayerAudioFocusControl(this.mAppCtx);
    this.mStatisticsManager = XmStatisticsManager.getInstance();
    this.mAdsManager = XmAdsManager.getInstance(this.mAppCtx);
    this.mAdsManager.setAdsStatusListener(this.mAdsListener);
    this.mNotificationManager = ((NotificationManager)this.mAppCtx.getSystemService("notification"));
    this.wireControlReceiver = new WireControlReceiver();
    registerWireControlReciever();
    Log.e("XmPlayerService", "---onCreate");
  }

  public void onDestroy()
  {
    Log.e("XmPlayerService", "---onDestroy");
    AudioManager localAudioManager = (AudioManager)getSystemService("audio");
    if (localAudioManager != null)
      localAudioManager.unregisterMediaButtonEventReceiver(this.mediaButtonReceiver);
    unregisterReceiver(this.wireControlReceiver);
    this.mPlayerControl.release();
    this.mStatisticsManager.release();
    this.mAdsManager.release();
    this.mNotificationManager.cancel(this.mNotificationId);
    mService = null;
    super.onDestroy();
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    return 1;
  }

  public boolean pausePlay()
  {
    this.mPlayerAudioFocusControl.setAudioFocusAtPauseState();
    if (this.mAdsManager.isAdsActive())
    {
      this.mAdsManager.pauseAd();
      if (this.mPlayerStatusListener != null)
        this.mPlayerStatusListener.onPlayPause();
      return true;
    }
    return this.mPlayerControl.pause();
  }

  public boolean play(int paramInt)
  {
    return play(paramInt, true);
  }

  public boolean playNext()
  {
    int i = this.mListControl.getNextIndex();
    if (i >= 0)
      return play(i);
    return false;
  }

  public boolean playPre()
  {
    int i = this.mListControl.getPreIndex();
    if (i >= 0)
      return play(i);
    return false;
  }

  @SuppressLint({"NewApi"})
  public void registerWireControlReciever()
  {
    AudioManager localAudioManager = (AudioManager)getSystemService("audio");
    this.mediaButtonReceiver = new ComponentName(getPackageName(), WireControlReceiver.class.getName());
    localAudioManager.registerMediaButtonEventReceiver(this.mediaButtonReceiver);
    if (Build.VERSION.SDK_INT >= 14)
    {
      if (this.mRemoteControlClient == null)
      {
        Intent localIntent = new Intent("android.intent.action.MEDIA_BUTTON");
        localIntent.setComponent(this.mediaButtonReceiver);
        this.mRemoteControlClient = new RemoteControlClient(PendingIntent.getBroadcast(this, 0, localIntent, 0));
        localAudioManager.registerRemoteControlClient(this.mRemoteControlClient);
      }
      this.mRemoteControlClient.setTransportControlFlags(181);
    }
    new IntentFilter("android.intent.action.MEDIA_BUTTON").setPriority(10000);
    registerReceiver(this.wireControlReceiver, new IntentFilter("android.intent.action.MEDIA_BUTTON"));
  }

  public void setVolume(float paramFloat1, float paramFloat2)
  {
    if (this.mPlayerControl == null)
      return;
    this.mPlayerControl.setVolume(paramFloat1, paramFloat2);
  }

  public boolean startPlay()
  {
    this.mPlayerAudioFocusControl.setAudioFocusAtStartState();
    boolean bool;
    if (this.mAdsManager.isAdsActive())
    {
      this.mAdsManager.playAd();
      if (this.mPlayerStatusListener != null)
        this.mPlayerStatusListener.onPlayStart();
      bool = true;
    }
    int i;
    do
    {
      do
      {
        return bool;
        bool = this.mPlayerControl.play();
      }
      while (bool);
      i = this.mListControl.getCurrIndex();
    }
    while (i < 0);
    return play(i);
  }

  public boolean stopPlay()
  {
    this.mPlayerAudioFocusControl.setAudioFocusAtStopState();
    return this.mPlayerControl.stop();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.XmPlayerService
 * JD-Core Version:    0.6.0
 */