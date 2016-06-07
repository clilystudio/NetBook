package com.ximalaya.ting.android.player;

import android.content.Context;
import android.media.MediaPlayer;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import java.io.FileDescriptor;
import java.io.IOException;

public class SMediaPlayer
  implements Handler.Callback, XMediaplayerImpl
{
  private static final int MSG_COMPLETE = 9;
  private static final int MSG_INCREMENTAL_PREPARE = 2;
  private static final int MSG_PAUSE = 3;
  private static final int MSG_PREPARE = 1;
  private static final int MSG_RELEASE = 5;
  private static final int MSG_RESET = 7;
  private static final int MSG_SEEK_TO = 6;
  private static final int MSG_SET_DATA_SOURCE = 8;
  private static final int MSG_START = 0;
  private static final int MSG_STOP = 4;
  private boolean hasSetDataSource = false;
  private boolean isBuffering = false;
  private boolean isPrepareing = false;
  private boolean isSeeking = false;
  private XMediaplayerJNI.AudioType mAudioType = XMediaplayerJNI.AudioType.NORMAL_FILE;
  private int mCurrentPosition = 0;
  private int mDuration = 0;
  private Handler mEventHandler;
  private final Handler mHandler;
  private final HandlerThread mInternalPlaybackThread;
  public MediaPlayer mMediaPlayer = new MediaPlayer();
  private XMediaPlayer.OnPositionChangeListener mOnPositionChangeListener;
  private int mPlayState;
  private String mPlayUrl;
  private Runnable runnable = new SMediaPlayer.1(this);
  private long time = System.currentTimeMillis();

  public SMediaPlayer()
  {
    this.mMediaPlayer.setAudioStreamType(3);
    this.mEventHandler = new Handler(Looper.myLooper());
    this.mPlayState = 1;
    this.mInternalPlaybackThread = new PriorityHandlerThread(getClass().getSimpleName() + ":Handler", -16);
    this.mInternalPlaybackThread.start();
    this.mHandler = new Handler(this.mInternalPlaybackThread.getLooper(), this);
  }

  private void printTime(String paramString)
  {
    Logger.log(XMediaPlayer.Tag, paramString + " nowtime:" + System.currentTimeMillis() + "long:" + (System.currentTimeMillis() - this.time));
    this.time = System.currentTimeMillis();
  }

  private void resetState()
  {
    this.isSeeking = false;
    this.isBuffering = false;
    this.isPrepareing = false;
  }

  public XMediaplayerJNI.AudioType getAudioType()
  {
    return this.mAudioType;
  }

  public int getCurrentPosition()
  {
    if ((!this.isSeeking) && (!this.isBuffering) && (!this.isPrepareing))
      this.mCurrentPosition = this.mMediaPlayer.getCurrentPosition();
    return this.mCurrentPosition;
  }

  public int getDuration()
  {
    if (((!this.isSeeking) && (!this.isBuffering) && (!this.isPrepareing)) || (this.mDuration == 0))
      this.mDuration = this.mMediaPlayer.getDuration();
    return this.mDuration;
  }

  public int getPlayState()
  {
    return this.mPlayState;
  }

  public boolean handleMessage(Message paramMessage)
  {
    try
    {
      switch (paramMessage.what)
      {
      case 1:
        this.mPlayState = 2;
        printTime("MSG_PREPARE start");
        this.mMediaPlayer.prepareAsync();
        printTime("MSG_PREPARE end");
        return true;
      case 0:
        this.mPlayState = 4;
        printTime("MSG_START start");
        this.mMediaPlayer.start();
        printTime("MSG_START end");
        return true;
      case 3:
        this.mPlayState = 5;
        this.mMediaPlayer.pause();
        return true;
      case 4:
        this.mPlayState = 6;
        this.mMediaPlayer.stop();
        return true;
      case 5:
        this.mPlayState = 9;
        printTime("MSG_RELEASE start");
        this.mMediaPlayer.release();
        printTime("MSG_RELEASE end");
        return true;
      case 7:
        this.mPlayState = 0;
        printTime("MSG_RESET start");
        this.mMediaPlayer.reset();
        resetState();
        printTime("MSG_RESET end");
        return true;
      case 6:
        int i = ((Integer)paramMessage.obj).intValue();
        this.mMediaPlayer.seekTo(i);
        return true;
      case 8:
        printTime("MSG_SET_DATA_SOURCE start");
        Object localObject = paramMessage.obj;
        if (localObject != null);
        try
        {
          this.mMediaPlayer.setDataSource(paramMessage.obj.toString());
          printTime("MSG_SET_DATA_SOURCE end");
          return true;
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          while (true)
            localIllegalArgumentException.printStackTrace();
        }
        catch (SecurityException localSecurityException)
        {
          while (true)
            localSecurityException.printStackTrace();
        }
        catch (IllegalStateException localIllegalStateException)
        {
          while (true)
            localIllegalStateException.printStackTrace();
        }
        catch (IOException localIOException)
        {
          while (true)
            localIOException.printStackTrace();
        }
      case 2:
      }
      return false;
    }
    catch (Exception localException)
    {
    }
    return true;
  }

  public boolean isPlaying()
  {
    if ((!this.isSeeking) && (!this.isBuffering) && (!this.isPrepareing))
      return this.mMediaPlayer.isPlaying();
    return false;
  }

  public boolean isUseSystemPlayer()
  {
    return true;
  }

  public void pause()
  {
    this.mHandler.obtainMessage(3).sendToTarget();
  }

  public void prepareAsync()
  {
    this.isPrepareing = true;
    printTime("prepareAsync");
    this.mHandler.obtainMessage(1).sendToTarget();
  }

  public void release()
  {
    printTime("release");
    resetState();
    this.mHandler.obtainMessage(5).sendToTarget();
    this.mOnPositionChangeListener = null;
    this.mInternalPlaybackThread.getLooper().quit();
    this.mInternalPlaybackThread.interrupt();
  }

  public void removeProxy()
  {
    PlayerUtil.setProxyHost(null);
    PlayerUtil.setProxyPort(0);
    PlayerUtil.setAuthorization(null);
  }

  public void reset()
  {
    this.mDuration = 0;
    if (this.hasSetDataSource)
    {
      printTime("reset");
      this.mHandler.obtainMessage(7).sendToTarget();
    }
  }

  public void seekTo(int paramInt)
  {
    this.isSeeking = true;
    this.mHandler.obtainMessage(6, Integer.valueOf(paramInt)).sendToTarget();
  }

  public void setAudioStreamType(int paramInt)
  {
    this.mMediaPlayer.setAudioStreamType(paramInt);
  }

  public void setDataSource(FileDescriptor paramFileDescriptor, String paramString)
  {
    this.hasSetDataSource = true;
    try
    {
      this.mMediaPlayer.setDataSource(paramFileDescriptor);
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      localIllegalArgumentException.printStackTrace();
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      localIllegalStateException.printStackTrace();
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }

  public void setDataSource(String paramString)
  {
    printTime("setDataSource");
    this.mDuration = 0;
    if (paramString.contains("m3u8"));
    for (this.mAudioType = XMediaplayerJNI.AudioType.M3U8_FILE; ; this.mAudioType = XMediaplayerJNI.AudioType.NORMAL_FILE)
    {
      this.hasSetDataSource = true;
      this.mHandler.obtainMessage(8, paramString).sendToTarget();
      return;
    }
  }

  public void setDownloadBufferSize(long paramLong)
  {
  }

  public void setOnBufferingUpdateListener(XMediaPlayer.OnBufferingUpdateListener paramOnBufferingUpdateListener)
  {
    this.mMediaPlayer.setOnBufferingUpdateListener(new SMediaPlayer.2(this, paramOnBufferingUpdateListener));
  }

  public void setOnCompletionListener(XMediaPlayer.OnCompletionListener paramOnCompletionListener)
  {
    this.mMediaPlayer.setOnCompletionListener(new SMediaPlayer.3(this, paramOnCompletionListener));
  }

  public void setOnErrorListener(XMediaPlayer.OnErrorListener paramOnErrorListener)
  {
    this.mMediaPlayer.setOnErrorListener(new SMediaPlayer.4(this, paramOnErrorListener));
  }

  public void setOnInfoListener(XMediaPlayer.OnInfoListener paramOnInfoListener)
  {
    Logger.log(XMediaplayerJNI.Tag, "SMediaPlayer setOnInfoListener");
    this.mMediaPlayer.setOnInfoListener(new SMediaPlayer.5(this, paramOnInfoListener));
  }

  public void setOnPositionChangeListener(XMediaPlayer.OnPositionChangeListener paramOnPositionChangeListener)
  {
    this.mOnPositionChangeListener = paramOnPositionChangeListener;
    if (this.mOnPositionChangeListener != null)
      this.mEventHandler.postDelayed(this.runnable, 1000L);
  }

  public void setOnPreparedListener(XMediaPlayer.OnPreparedListener paramOnPreparedListener)
  {
    this.mMediaPlayer.setOnPreparedListener(new SMediaPlayer.6(this, paramOnPreparedListener));
  }

  public void setOnSeekCompleteListener(XMediaPlayer.OnSeekCompleteListener paramOnSeekCompleteListener)
  {
    this.mMediaPlayer.setOnSeekCompleteListener(new SMediaPlayer.7(this, paramOnSeekCompleteListener));
  }

  public void setProxy(String paramString1, int paramInt, String paramString2)
  {
    PlayerUtil.setProxyHost(paramString1);
    PlayerUtil.setProxyPort(paramInt);
    PlayerUtil.setAuthorization(paramString2);
  }

  public void setVolume(float paramFloat1, float paramFloat2)
  {
    this.mMediaPlayer.setVolume(paramFloat1, paramFloat2);
  }

  public void setWakeMode(Context paramContext, int paramInt)
  {
    this.mMediaPlayer.setWakeMode(paramContext, paramInt);
  }

  public void start()
  {
    printTime("start");
    if ((this.mPlayState == 5) || (this.mPlayState == 3))
      this.mHandler.obtainMessage(0).sendToTarget();
  }

  public void stop()
  {
    this.mHandler.obtainMessage(4).sendToTarget();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.player.SMediaPlayer
 * JD-Core Version:    0.6.0
 */