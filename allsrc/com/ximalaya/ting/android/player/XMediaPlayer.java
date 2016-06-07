package com.ximalaya.ting.android.player;

import android.content.Context;
import android.media.MediaPlayer;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import java.io.FileDescriptor;

public class XMediaPlayer extends XMediaplayerJNI
  implements Handler.Callback
{
  private static final int MEDIA_BUFFERING_UPDATE = 3;
  private static final int MEDIA_ERROR = 100;
  public static final int MEDIA_ERROR_ARCH_UNSUPPORTED = -1011;
  public static final int MEDIA_ERROR_IO = -1004;
  public static final int MEDIA_ERROR_MALFORMED = -1007;
  public static final int MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK = 200;
  public static final int MEDIA_ERROR_SERVER_DIED = 100;
  public static final int MEDIA_ERROR_TIMED_OUT = -110;
  public static final int MEDIA_ERROR_UNKNOWN = 1;
  public static final int MEDIA_ERROR_UNSUPPORTED = -1010;
  private static final int MEDIA_INFO = 200;
  public static final int MEDIA_INFO_BUFFERING_END = 702;
  public static final int MEDIA_INFO_BUFFERING_START = 701;
  public static final int MEDIA_INFO_DOWNLOAD_RATE_CHANGED = 901;
  public static final int MEDIA_INFO_NOT_SEEKABLE = 801;
  public static final int MEDIA_INFO_VIDEO_TRACK_LAGGING = 700;
  private static final int MEDIA_NOP = 0;
  private static final int MEDIA_PAUSED = 7;
  private static final int MEDIA_PLAYBACK_COMPLETE = 2;
  private static final int MEDIA_PREPARED = 1;
  private static final int MEDIA_SEEK_COMPLETE = 4;
  private static final int MEDIA_SET_VIDEO_SIZE = 5;
  private static final int MEDIA_SKIPPED = 9;
  private static final int MEDIA_STARTED = 6;
  private static final int MEDIA_STOPPED = 8;
  private static final int MEDIA_SUBTITLE_DATA = 201;
  private static final int MEDIA_TIMED_CHANGE = 202;
  private static final int MEDIA_TIMED_TEXT = 99;
  private static final int MSG_COMPLETE = 9;
  private static final int MSG_INCREMENTAL_PREPARE = 2;
  private static final int MSG_INIT = 10;
  private static final int MSG_PAUSE = 3;
  private static final int MSG_PREPARE = 1;
  private static final int MSG_RELEASE = 5;
  private static final int MSG_RESET = 7;
  private static final int MSG_SEEK_TO = 6;
  private static final int MSG_SET_DATA_SOURCE = 8;
  private static final int MSG_START = 0;
  private static final int MSG_STOP = 4;
  private XMediaPlayer.EventHandler mEventHandler;
  private final Handler mHandler;
  private final HandlerThread mInternalPlaybackThread = new PriorityHandlerThread(getClass().getSimpleName() + ":Handler", -16);
  private XMediaPlayer.OnBufferingUpdateListener mOnBufferingUpdateListener;
  private XMediaPlayer.OnCompletionListener mOnCompletionListener;
  private XMediaPlayer.OnErrorListener mOnErrorListener;
  private XMediaPlayer.OnInfoListener mOnInfoListener;
  private XMediaPlayer.OnPreparedListener mOnPreparedListener;
  private XMediaPlayer.OnSeekCompleteListener mOnSeekCompleteListener;
  private XMediaPlayer.OnPositionChangeListener mOnTimedChangeListener;
  private volatile int mPlayState = 1;
  private boolean mStayAwake;
  private PowerManager.WakeLock mWakeLock = null;

  public XMediaPlayer()
  {
    this.mInternalPlaybackThread.start();
    this.mHandler = new Handler(this.mInternalPlaybackThread.getLooper(), this);
    this.mHandler.obtainMessage(10).sendToTarget();
    Looper localLooper1 = Looper.myLooper();
    if (localLooper1 != null)
    {
      this.mEventHandler = new XMediaPlayer.EventHandler(this, this, localLooper1);
      return;
    }
    Looper localLooper2 = Looper.getMainLooper();
    if (localLooper2 != null)
    {
      this.mEventHandler = new XMediaPlayer.EventHandler(this, this, localLooper2);
      return;
    }
    this.mEventHandler = null;
  }

  private void stayAwake(boolean paramBoolean)
  {
    if (this.mWakeLock != null)
    {
      if ((!paramBoolean) || (this.mWakeLock.isHeld()))
        break label34;
      this.mWakeLock.acquire();
    }
    while (true)
    {
      this.mStayAwake = paramBoolean;
      return;
      label34: if ((paramBoolean) || (!this.mWakeLock.isHeld()))
        continue;
      this.mWakeLock.release();
    }
  }

  public int getCurrentPosition()
  {
    if (this.mPlayState == 12)
      return 0;
    return super.getCurrentPosition();
  }

  public int getDuration()
  {
    if (this.mPlayState == 12)
      return 0;
    return super.getDuration();
  }

  public int getPlayState()
  {
    return this.mPlayState;
  }

  public boolean handleMessage(Message paramMessage)
  {
    if (this.mPlayState == 12)
    {
      Logger.log(XMediaplayerJNI.Tag, "handleMessage00 mPlayState NOT_ARCH_SUPPORT");
      return true;
    }
    Logger.log(XMediaplayerJNI.Tag, "handleMessage00 mPlayState:" + this.mPlayState);
    try
    {
      switch (paramMessage.what)
      {
      case 0:
        Logger.log(XMediaplayerJNI.Tag, "handleMessage00 STARTED start");
        this.mPlayState = 4;
        super.start();
        Logger.log(XMediaplayerJNI.Tag, "handleMessage00 STARTED end");
        return true;
      case 10:
        Logger.log(XMediaplayerJNI.Tag, "handleMessage00 MSG_INIT start");
        xmediaplayerInit();
        Logger.log(XMediaplayerJNI.Tag, "handleMessage00 MSG_INIT end");
        return true;
      case 1:
        Logger.log(XMediaplayerJNI.Tag, "handleMessage00 MSG_PREPARE start");
        this.mPlayState = 2;
        super.prepareAsync();
        Logger.log(XMediaplayerJNI.Tag, "handleMessage00 MSG_PREPARE end");
        return true;
      case 3:
        Logger.log(XMediaplayerJNI.Tag, "handleMessage00 MSG_PAUSE start");
        this.mPlayState = 5;
        super.pause();
        Logger.log(XMediaplayerJNI.Tag, "handleMessage00 MSG_PAUSE end");
        return true;
      case 4:
        Logger.log(XMediaplayerJNI.Tag, "handleMessage00 MSG_STOP start");
        this.mPlayState = 6;
        super.stop();
        Logger.log(XMediaplayerJNI.Tag, "handleMessage00 MSG_STOP end");
        return true;
      case 5:
        Logger.log(XMediaplayerJNI.Tag, "handleMessage00 MSG_RELEASE start");
        this.mPlayState = 9;
        super.release();
        this.mInternalPlaybackThread.getLooper().quit();
        this.mInternalPlaybackThread.interrupt();
        Logger.log(XMediaplayerJNI.Tag, "handleMessage00 MSG_RELEASE end");
        return true;
      case 7:
        Logger.log(XMediaplayerJNI.Tag, "handleMessage00 MSG_RESET start");
        this.mPlayState = 0;
        super.reset();
        Logger.log(XMediaplayerJNI.Tag, "handleMessage00 MSG_RESET end");
        return true;
      case 6:
        Logger.log(XMediaplayerJNI.Tag, "handleMessage00 MSG_SEEK_TO start");
        super.seekTo(((Integer)paramMessage.obj).intValue());
        Logger.log(XMediaplayerJNI.Tag, "handleMessage00 MSG_SEEK_TO end");
        return true;
      case 8:
        if (paramMessage.obj == null)
          break;
        super.setDataSource(paramMessage.obj.toString());
        break;
      case 9:
        Logger.log(XMediaplayerJNI.Tag, "handleMessage00 MSG_COMPLETE start");
        this.mPlayState = 11;
        super.onCompletionInner();
        Logger.log(XMediaplayerJNI.Tag, "handleMessage00 MSG_COMPLETE end");
        return true;
      case 2:
      }
    }
    catch (Exception localException)
    {
      return true;
    }
    return false;
    return true;
  }

  public boolean isPlaying()
  {
    if ((this.mPlayState == 12) || (this.mPlayState == 3));
    do
      return false;
    while ((!super.isPlaying()) || (this.mPlayState != 4));
    return true;
  }

  public boolean isUseSystemPlayer()
  {
    return false;
  }

  public final void mOnTimedChangeListenerInner()
  {
    if (this.mEventHandler != null)
      this.mEventHandler.obtainMessage(202).sendToTarget();
  }

  public final void onBufferingUpdateInner(int paramInt)
  {
    if (this.mEventHandler != null)
      this.mEventHandler.obtainMessage(3, paramInt, 0).sendToTarget();
  }

  public final void onCompletionInner()
  {
    stayAwake(false);
    this.mHandler.obtainMessage(9).sendToTarget();
    if (this.mEventHandler != null)
      this.mEventHandler.obtainMessage(2).sendToTarget();
  }

  public final void onErrorInner(int paramInt1, int paramInt2)
  {
    if (paramInt2 == -1011)
    {
      this.mPlayState = 12;
      Logger.log(XMediaplayerJNI.Tag, "onErrorInner mPlayState NOT_ARCH_SUPPORT");
    }
    while (true)
    {
      super.onErrorInner(paramInt1, paramInt2);
      stayAwake(false);
      if (this.mEventHandler != null)
        this.mEventHandler.obtainMessage(100, paramInt1, paramInt2).sendToTarget();
      return;
      Logger.log(XMediaplayerJNI.Tag, "onErrorInner errorCode:" + paramInt1 + "extra:" + paramInt2);
    }
  }

  public final void onInfoInner(int paramInt1, int paramInt2)
  {
    if ((this.mPlayState != 4) && (this.mPlayState != 2));
    while (true)
    {
      return;
      if (paramInt2 == 701)
        this.isBuffing = true;
      while (this.mEventHandler != null)
      {
        this.mEventHandler.obtainMessage(200, paramInt1, paramInt2).sendToTarget();
        return;
        if (paramInt2 != 702)
          continue;
        this.isBuffing = false;
      }
    }
  }

  public final void onPreparedInner()
  {
    super.onPreparedInner();
    this.mPlayState = 3;
    if (this.mEventHandler != null)
      this.mEventHandler.obtainMessage(1).sendToTarget();
  }

  public final void onSeekCompletedInner()
  {
    Logger.log(Tag, "onSeekCompletedInner");
    if (this.mEventHandler != null)
      this.mEventHandler.obtainMessage(4).sendToTarget();
  }

  public void pause()
  {
    stayAwake(false);
    this.mHandler.obtainMessage(3).sendToTarget();
  }

  public void prepareAsync()
  {
    this.mHandler.obtainMessage(1).sendToTarget();
  }

  public void release()
  {
    stayAwake(false);
    this.mOnPreparedListener = null;
    this.mOnBufferingUpdateListener = null;
    this.mOnCompletionListener = null;
    this.mOnSeekCompleteListener = null;
    this.mOnErrorListener = null;
    this.mOnInfoListener = null;
    this.mOnTimedChangeListener = null;
    this.mHandler.obtainMessage(5).sendToTarget();
  }

  public void removeProxy()
  {
    PlayerUtil.setProxyHost(null);
    PlayerUtil.setProxyPort(0);
    PlayerUtil.setAuthorization(null);
  }

  public void reset()
  {
    stayAwake(false);
    this.mHandler.obtainMessage(7).sendToTarget();
  }

  public void seekTo(int paramInt)
  {
    this.mHandler.obtainMessage(6, Integer.valueOf(paramInt)).sendToTarget();
  }

  public void setAudioStreamType(int paramInt)
  {
  }

  public void setDataSource(FileDescriptor paramFileDescriptor, String paramString)
  {
    setDataSource(paramString);
  }

  public void setDataSource(String paramString)
  {
    this.mHandler.obtainMessage(8, paramString).sendToTarget();
  }

  public void setDownloadBufferSize(long paramLong)
  {
    if (paramLong > 0L)
      XMediaPlayerConstants.DOWNLOAD_QUEUE_SIZE = (int)(paramLong / 65536L);
  }

  public void setOnBufferingUpdateListener(XMediaPlayer.OnBufferingUpdateListener paramOnBufferingUpdateListener)
  {
    this.mOnBufferingUpdateListener = paramOnBufferingUpdateListener;
  }

  public void setOnCompletionListener(XMediaPlayer.OnCompletionListener paramOnCompletionListener)
  {
    this.mOnCompletionListener = paramOnCompletionListener;
  }

  public void setOnErrorListener(XMediaPlayer.OnErrorListener paramOnErrorListener)
  {
    this.mOnErrorListener = paramOnErrorListener;
  }

  public void setOnInfoListener(XMediaPlayer.OnInfoListener paramOnInfoListener)
  {
    this.mOnInfoListener = paramOnInfoListener;
  }

  public void setOnPositionChangeListener(XMediaPlayer.OnPositionChangeListener paramOnPositionChangeListener)
  {
    this.mOnTimedChangeListener = paramOnPositionChangeListener;
  }

  public void setOnPreparedListener(XMediaPlayer.OnPreparedListener paramOnPreparedListener)
  {
    this.mOnPreparedListener = paramOnPreparedListener;
  }

  public void setOnSeekCompleteListener(XMediaPlayer.OnSeekCompleteListener paramOnSeekCompleteListener)
  {
    this.mOnSeekCompleteListener = paramOnSeekCompleteListener;
  }

  public void setProxy(String paramString1, int paramInt, String paramString2)
  {
    PlayerUtil.setProxyHost(paramString1);
    PlayerUtil.setProxyPort(paramInt);
    PlayerUtil.setAuthorization(paramString2);
  }

  public void setVolume(float paramFloat1, float paramFloat2)
  {
    super.setVolume(paramFloat1, paramFloat2);
  }

  public void setWakeMode(Context paramContext, int paramInt)
  {
    if (paramContext == null)
      return;
    int j;
    if (this.mWakeLock != null)
      if (this.mWakeLock.isHeld())
      {
        j = 1;
        this.mWakeLock.release();
        label32: this.mWakeLock = null;
      }
    for (int i = j; ; i = 0)
    {
      PowerManager localPowerManager = (PowerManager)paramContext.getSystemService("power");
      if (localPowerManager == null)
        break;
      this.mWakeLock = localPowerManager.newWakeLock(0x20000000 | paramInt, MediaPlayer.class.getName());
      this.mWakeLock.setReferenceCounted(false);
      if (i == 0)
        break;
      this.mWakeLock.acquire();
      return;
      j = 0;
      break label32;
    }
  }

  public void start()
  {
    stayAwake(true);
    this.mHandler.obtainMessage(0).sendToTarget();
  }

  public void stop()
  {
    stayAwake(false);
    this.mHandler.obtainMessage(4).sendToTarget();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.player.XMediaPlayer
 * JD-Core Version:    0.6.0
 */