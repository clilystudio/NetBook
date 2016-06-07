package com.ximalaya.ting.android.player;

import android.content.Context;
import java.io.FileDescriptor;

public abstract interface XMediaplayerImpl
{
  public static final int COMPLETE = 11;
  public static final int ERROR = 8;
  public static final int IDLE = 0;
  public static final int INFO = 10;
  public static final int INITIALIZED = 1;
  public static final int NOT_ARCH_SUPPORT = 12;
  public static final int PAUSED = 5;
  public static final int PLAYBACK_COMPLETED = 7;
  public static final int PREPARED = 3;
  public static final int PREPARING = 2;
  public static final int RELEASED = 9;
  public static final int STARTED = 4;
  public static final int STOPPED = 6;

  public abstract XMediaplayerJNI.AudioType getAudioType();

  public abstract int getCurrentPosition();

  public abstract int getDuration();

  public abstract int getPlayState();

  public abstract boolean isPlaying();

  public abstract boolean isUseSystemPlayer();

  public abstract void pause();

  public abstract void prepareAsync();

  public abstract void release();

  public abstract void removeProxy();

  public abstract void reset();

  public abstract void seekTo(int paramInt);

  public abstract void setAudioStreamType(int paramInt);

  public abstract void setDataSource(FileDescriptor paramFileDescriptor, String paramString);

  public abstract void setDataSource(String paramString);

  public abstract void setDownloadBufferSize(long paramLong);

  public abstract void setOnBufferingUpdateListener(XMediaPlayer.OnBufferingUpdateListener paramOnBufferingUpdateListener);

  public abstract void setOnCompletionListener(XMediaPlayer.OnCompletionListener paramOnCompletionListener);

  public abstract void setOnErrorListener(XMediaPlayer.OnErrorListener paramOnErrorListener);

  public abstract void setOnInfoListener(XMediaPlayer.OnInfoListener paramOnInfoListener);

  public abstract void setOnPositionChangeListener(XMediaPlayer.OnPositionChangeListener paramOnPositionChangeListener);

  public abstract void setOnPreparedListener(XMediaPlayer.OnPreparedListener paramOnPreparedListener);

  public abstract void setOnSeekCompleteListener(XMediaPlayer.OnSeekCompleteListener paramOnSeekCompleteListener);

  public abstract void setProxy(String paramString1, int paramInt, String paramString2);

  public abstract void setVolume(float paramFloat1, float paramFloat2);

  public abstract void setWakeMode(Context paramContext, int paramInt);

  public abstract void start();

  public abstract void stop();
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.player.XMediaplayerImpl
 * JD-Core Version:    0.6.0
 */