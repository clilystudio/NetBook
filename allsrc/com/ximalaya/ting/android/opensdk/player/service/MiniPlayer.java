package com.ximalaya.ting.android.opensdk.player.service;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.net.Uri;
import android.os.Build.VERSION;
import com.ximalaya.ting.android.opensdk.util.Logger;
import java.io.FileDescriptor;

public class MiniPlayer
{
  public static final int STATE_COMPLETED = 5;
  public static final int STATE_ERR = -1;
  public static final int STATE_IDLE = 0;
  public static final int STATE_PAUSED = 3;
  public static final int STATE_PREPARED = 1;
  public static final int STATE_STARTED = 2;
  public static final int STATE_STOPPED = 4;
  private static final String TAG = "MiniPlayer";
  private MediaPlayer.OnCompletionListener mCompletionListener;
  private float mLeftVol = 1.0F;
  private boolean mLoop = false;
  private MediaPlayer mPlayer;
  private MiniPlayer.PlayerStatusListener mPlayerStatusListener;
  private float mRightVol = 1.0F;
  private int mStatus = -1;
  private int mStreamType = 3;

  public MiniPlayer()
  {
    resetPlayer();
  }

  public int getCurrPos()
  {
    switch (this.mStatus)
    {
    default:
      return 0;
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    }
    return this.mPlayer.getCurrentPosition();
  }

  public int getDuration()
  {
    switch (this.mStatus)
    {
    default:
      return 0;
    case 2:
    case 3:
    case 4:
    case 5:
    }
    return this.mPlayer.getDuration();
  }

  @TargetApi(9)
  public int getSessionId()
  {
    if (Build.VERSION.SDK_INT >= 9)
      return this.mPlayer.getAudioSessionId();
    return 0;
  }

  public int getStatus()
  {
    return this.mStatus;
  }

  @Deprecated
  public void init(Context paramContext, Uri paramUri)
  {
    try
    {
      resetPlayer();
      this.mPlayer.setDataSource(paramContext, paramUri);
      this.mPlayer.prepare();
      this.mStatus = 1;
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      this.mStatus = -1;
    }
  }

  @Deprecated
  public void init(Context paramContext, Uri paramUri, int paramInt1, int paramInt2)
  {
    try
    {
      resetPlayer();
      this.mPlayer.setDataSource(paramContext, paramUri);
      this.mPlayer.prepare();
      this.mStatus = 1;
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      this.mStatus = -1;
    }
  }

  public void init(FileDescriptor paramFileDescriptor, int paramInt)
  {
    Logger.e("MiniPlayer", "init seek " + paramInt);
    try
    {
      resetPlayer();
      this.mPlayer.setDataSource(paramFileDescriptor);
      this.mPlayer.prepare();
      if (paramInt > 0)
        this.mPlayer.seekTo(paramInt);
      this.mStatus = 1;
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      this.mStatus = -1;
    }
  }

  public void init(FileDescriptor paramFileDescriptor, long paramLong1, long paramLong2)
  {
    Logger.e("MiniPlayer", "init offset " + paramLong1 + ", length " + paramLong2);
    try
    {
      resetPlayer();
      this.mPlayer.setDataSource(paramFileDescriptor, paramLong1, paramLong2);
      this.mPlayer.prepare();
      this.mStatus = 1;
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      this.mStatus = -1;
    }
  }

  public void init(String paramString)
  {
    resetPlayer();
    this.mPlayer.setDataSource(paramString);
    this.mPlayer.prepare();
    this.mStatus = 1;
  }

  public boolean isPaused()
  {
    return this.mStatus == 3;
  }

  public boolean isPlaying()
  {
    return this.mStatus == 2;
  }

  public boolean isStop()
  {
    return this.mStatus == 4;
  }

  public void pausePlay()
  {
    try
    {
      if (this.mStatus == 2)
      {
        this.mPlayer.pause();
        this.mStatus = 3;
        if (this.mPlayerStatusListener != null)
          this.mPlayerStatusListener.onPause();
      }
      return;
    }
    catch (Exception localException)
    {
      do
      {
        localException.printStackTrace();
        this.mStatus = -1;
      }
      while (this.mPlayerStatusListener == null);
      this.mPlayerStatusListener.onError(localException, 0, 0);
    }
  }

  public void release()
  {
    try
    {
      if (this.mPlayer != null)
      {
        if (this.mStatus == 2)
        {
          this.mPlayer.stop();
          if (this.mPlayerStatusListener != null)
            this.mPlayerStatusListener.onStop();
        }
        this.mPlayer.release();
      }
      this.mPlayer = null;
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        if (this.mPlayerStatusListener == null)
          continue;
        this.mPlayerStatusListener.onError(localException, 0, 0);
      }
    }
  }

  public void resetPlayer()
  {
    try
    {
      if (this.mPlayer == null)
      {
        this.mPlayer = new MediaPlayer();
        this.mStatus = 0;
        this.mPlayer.setOnErrorListener(new MiniPlayer.1(this));
        this.mPlayer.setOnCompletionListener(new MiniPlayer.2(this));
      }
      if (this.mStatus == 2)
      {
        this.mPlayer.stop();
        this.mStatus = 4;
        if (this.mPlayerStatusListener != null)
          this.mPlayerStatusListener.onStop();
      }
      this.mPlayer.reset();
      this.mPlayer.setLooping(this.mLoop);
      this.mPlayer.setVolume(this.mLeftVol, this.mRightVol);
      this.mStatus = 0;
      return;
    }
    catch (Exception localException)
    {
      do
      {
        localException.printStackTrace();
        this.mStatus = -1;
      }
      while (this.mPlayerStatusListener == null);
      this.mPlayerStatusListener.onError(localException, 0, 0);
    }
  }

  public void restart()
  {
    try
    {
      switch (this.mStatus)
      {
      case 2:
      case 3:
      case 4:
        this.mPlayer.stop();
        this.mPlayer.prepare();
        this.mPlayer.start();
        this.mStatus = 2;
        if (this.mPlayerStatusListener != null)
        {
          this.mPlayerStatusListener.onStart();
          return;
        }
      case 1:
      case 5:
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      this.mStatus = -1;
      if (this.mPlayerStatusListener != null)
      {
        this.mPlayerStatusListener.onError(localException, 0, 0);
        return;
        this.mPlayer.start();
        this.mStatus = 2;
        if (this.mPlayerStatusListener != null)
          this.mPlayerStatusListener.onStart();
      }
    }
  }

  public void setAudioStreamType(int paramInt)
  {
    this.mStreamType = paramInt;
  }

  public void setLooping(boolean paramBoolean)
  {
    this.mLoop = paramBoolean;
    if (this.mStatus != -1)
      this.mPlayer.setLooping(paramBoolean);
  }

  public void setOnCompletionListener(MediaPlayer.OnCompletionListener paramOnCompletionListener)
  {
    this.mCompletionListener = paramOnCompletionListener;
  }

  public void setPlayerStatueListener(MiniPlayer.PlayerStatusListener paramPlayerStatusListener)
  {
    this.mPlayerStatusListener = paramPlayerStatusListener;
  }

  public void setVolume(float paramFloat1, float paramFloat2)
  {
    this.mLeftVol = paramFloat1;
    this.mRightVol = paramFloat2;
    if (this.mStatus != -1)
      this.mPlayer.setVolume(this.mLeftVol, this.mRightVol);
  }

  public void startPlay()
  {
    try
    {
      if ((this.mStatus == 1) || (this.mStatus == 3) || (this.mStatus == 5))
      {
        this.mPlayer.start();
        this.mStatus = 2;
        if (this.mPlayerStatusListener != null)
        {
          this.mPlayerStatusListener.onStart();
          return;
        }
      }
      else if (this.mStatus == 4)
      {
        this.mPlayer.prepare();
        this.mPlayer.start();
        this.mStatus = 2;
        if (this.mPlayerStatusListener != null)
        {
          this.mPlayerStatusListener.onStart();
          return;
        }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      this.mStatus = -1;
      if (this.mPlayerStatusListener != null)
        this.mPlayerStatusListener.onError(localException, 0, 0);
    }
  }

  public void stopPlay()
  {
    try
    {
      if (this.mStatus == 2)
      {
        this.mPlayer.stop();
        this.mStatus = 4;
        if (this.mPlayerStatusListener != null)
          this.mPlayerStatusListener.onStop();
      }
      return;
    }
    catch (Exception localException)
    {
      do
      {
        localException.printStackTrace();
        this.mStatus = -1;
      }
      while (this.mPlayerStatusListener == null);
      this.mPlayerStatusListener.onError(localException, 0, 0);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.MiniPlayer
 * JD-Core Version:    0.6.0
 */