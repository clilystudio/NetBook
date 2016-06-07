package com.ximalaya.ting.android.player;

import android.content.Context;
import android.text.TextUtils;
import java.io.FileDescriptor;

public class XMediaPlayerWrapper
  implements XMediaplayerImpl
{
  private boolean isUseSystemPlayer = false;
  private XMediaPlayer.OnBufferingUpdateListener mOnBufferingUpdateListener;
  private XMediaPlayer.OnCompletionListener mOnCompletionListener;
  private XMediaPlayer.OnErrorListener mOnErrorListener;
  private XMediaPlayer.OnInfoListener mOnInfoListener;
  private XMediaPlayer.OnPositionChangeListener mOnPositionChangeListener;
  private XMediaPlayer.OnPreparedListener mOnPreparedListener;
  private XMediaPlayer.OnSeekCompleteListener mOnSeekCompleteListener;
  private String mPlayUrl;
  private XMediaplayerImpl mXMediaplayerImpl;

  public XMediaPlayerWrapper()
  {
    init();
  }

  public XMediaPlayerWrapper(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.isUseSystemPlayer = true;
      this.mXMediaplayerImpl = newXMediaplayer();
      return;
    }
    init();
  }

  private void init()
  {
    this.isUseSystemPlayer = false;
    String str1 = PlayerUtil.getCpuInfo();
    String str2 = System.getProperty("os.arch");
    if ((!TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(str2)))
    {
      if ((str1.contains("Marvell")) && (str2.contains("armv5tel")))
        this.isUseSystemPlayer = true;
      Logger.log(XMediaplayerJNI.Tag, "cpuinfo:" + str1 + "cpuArch:" + str2);
    }
    while (true)
    {
      this.mXMediaplayerImpl = newXMediaplayer();
      return;
      Logger.log(XMediaplayerJNI.Tag, "cpuinfo null:" + str1 + "cpuArch:" + str2);
    }
  }

  private XMediaplayerImpl newXMediaplayer()
  {
    if (this.isUseSystemPlayer);
    for (this.mXMediaplayerImpl = new SMediaPlayer(); ; this.mXMediaplayerImpl = new XMediaPlayer())
      return this.mXMediaplayerImpl;
  }

  // ERROR //
  private void reUseSMediaplayer()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: iconst_1
    //   4: putfield 32	com/ximalaya/ting/android/player/XMediaPlayerWrapper:isUseSystemPlayer	Z
    //   7: aload_0
    //   8: getfield 42	com/ximalaya/ting/android/player/XMediaPlayerWrapper:mXMediaplayerImpl	Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
    //   11: aconst_null
    //   12: invokeinterface 125 2 0
    //   17: aload_0
    //   18: getfield 42	com/ximalaya/ting/android/player/XMediaPlayerWrapper:mXMediaplayerImpl	Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
    //   21: aconst_null
    //   22: invokeinterface 129 2 0
    //   27: aload_0
    //   28: getfield 42	com/ximalaya/ting/android/player/XMediaPlayerWrapper:mXMediaplayerImpl	Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
    //   31: aconst_null
    //   32: invokeinterface 133 2 0
    //   37: aload_0
    //   38: getfield 42	com/ximalaya/ting/android/player/XMediaPlayerWrapper:mXMediaplayerImpl	Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
    //   41: aconst_null
    //   42: invokeinterface 137 2 0
    //   47: aload_0
    //   48: getfield 42	com/ximalaya/ting/android/player/XMediaPlayerWrapper:mXMediaplayerImpl	Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
    //   51: aconst_null
    //   52: invokeinterface 141 2 0
    //   57: aload_0
    //   58: getfield 42	com/ximalaya/ting/android/player/XMediaPlayerWrapper:mXMediaplayerImpl	Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
    //   61: aconst_null
    //   62: invokeinterface 145 2 0
    //   67: aload_0
    //   68: getfield 42	com/ximalaya/ting/android/player/XMediaPlayerWrapper:mXMediaplayerImpl	Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
    //   71: aconst_null
    //   72: invokeinterface 149 2 0
    //   77: aload_0
    //   78: aload_0
    //   79: invokespecial 40	com/ximalaya/ting/android/player/XMediaPlayerWrapper:newXMediaplayer	()Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
    //   82: putfield 42	com/ximalaya/ting/android/player/XMediaPlayerWrapper:mXMediaplayerImpl	Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
    //   85: aload_0
    //   86: getfield 42	com/ximalaya/ting/android/player/XMediaPlayerWrapper:mXMediaplayerImpl	Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
    //   89: aload_0
    //   90: getfield 151	com/ximalaya/ting/android/player/XMediaPlayerWrapper:mOnBufferingUpdateListener	Lcom/ximalaya/ting/android/player/XMediaPlayer$OnBufferingUpdateListener;
    //   93: invokeinterface 125 2 0
    //   98: aload_0
    //   99: getfield 42	com/ximalaya/ting/android/player/XMediaPlayerWrapper:mXMediaplayerImpl	Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
    //   102: aload_0
    //   103: getfield 153	com/ximalaya/ting/android/player/XMediaPlayerWrapper:mOnCompletionListener	Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;
    //   106: invokeinterface 129 2 0
    //   111: aload_0
    //   112: getfield 42	com/ximalaya/ting/android/player/XMediaPlayerWrapper:mXMediaplayerImpl	Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
    //   115: aload_0
    //   116: getfield 51	com/ximalaya/ting/android/player/XMediaPlayerWrapper:mOnErrorListener	Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;
    //   119: invokeinterface 133 2 0
    //   124: aload_0
    //   125: getfield 42	com/ximalaya/ting/android/player/XMediaPlayerWrapper:mXMediaplayerImpl	Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
    //   128: aload_0
    //   129: getfield 155	com/ximalaya/ting/android/player/XMediaPlayerWrapper:mOnInfoListener	Lcom/ximalaya/ting/android/player/XMediaPlayer$OnInfoListener;
    //   132: invokeinterface 137 2 0
    //   137: aload_0
    //   138: getfield 42	com/ximalaya/ting/android/player/XMediaPlayerWrapper:mXMediaplayerImpl	Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
    //   141: aload_0
    //   142: getfield 157	com/ximalaya/ting/android/player/XMediaPlayerWrapper:mOnPreparedListener	Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPreparedListener;
    //   145: invokeinterface 141 2 0
    //   150: aload_0
    //   151: getfield 42	com/ximalaya/ting/android/player/XMediaPlayerWrapper:mXMediaplayerImpl	Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
    //   154: aload_0
    //   155: getfield 159	com/ximalaya/ting/android/player/XMediaPlayerWrapper:mOnSeekCompleteListener	Lcom/ximalaya/ting/android/player/XMediaPlayer$OnSeekCompleteListener;
    //   158: invokeinterface 145 2 0
    //   163: aload_0
    //   164: getfield 42	com/ximalaya/ting/android/player/XMediaPlayerWrapper:mXMediaplayerImpl	Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
    //   167: aload_0
    //   168: getfield 161	com/ximalaya/ting/android/player/XMediaPlayerWrapper:mOnPositionChangeListener	Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;
    //   171: invokeinterface 149 2 0
    //   176: aload_0
    //   177: getfield 163	com/ximalaya/ting/android/player/XMediaPlayerWrapper:mPlayUrl	Ljava/lang/String;
    //   180: invokestatic 73	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   183: ifne +37 -> 220
    //   186: aload_0
    //   187: getfield 163	com/ximalaya/ting/android/player/XMediaPlayerWrapper:mPlayUrl	Ljava/lang/String;
    //   190: ldc 165
    //   192: invokevirtual 169	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   195: ifeq +26 -> 221
    //   198: aload_0
    //   199: getfield 42	com/ximalaya/ting/android/player/XMediaPlayerWrapper:mXMediaplayerImpl	Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
    //   202: aload_0
    //   203: getfield 163	com/ximalaya/ting/android/player/XMediaPlayerWrapper:mPlayUrl	Ljava/lang/String;
    //   206: invokeinterface 172 2 0
    //   211: aload_0
    //   212: getfield 42	com/ximalaya/ting/android/player/XMediaPlayerWrapper:mXMediaplayerImpl	Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
    //   215: invokeinterface 175 1 0
    //   220: return
    //   221: new 177	java/io/FileInputStream
    //   224: dup
    //   225: aload_0
    //   226: getfield 163	com/ximalaya/ting/android/player/XMediaPlayerWrapper:mPlayUrl	Ljava/lang/String;
    //   229: invokespecial 178	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   232: astore_2
    //   233: aload_0
    //   234: getfield 42	com/ximalaya/ting/android/player/XMediaPlayerWrapper:mXMediaplayerImpl	Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
    //   237: aload_2
    //   238: invokevirtual 182	java/io/FileInputStream:getFD	()Ljava/io/FileDescriptor;
    //   241: aload_0
    //   242: getfield 163	com/ximalaya/ting/android/player/XMediaPlayerWrapper:mPlayUrl	Ljava/lang/String;
    //   245: invokeinterface 185 3 0
    //   250: aload_2
    //   251: invokevirtual 188	java/io/FileInputStream:close	()V
    //   254: goto -43 -> 211
    //   257: astore 8
    //   259: goto -48 -> 211
    //   262: astore 9
    //   264: aconst_null
    //   265: astore_2
    //   266: aload_2
    //   267: ifnull -56 -> 211
    //   270: aload_2
    //   271: invokevirtual 188	java/io/FileInputStream:close	()V
    //   274: goto -63 -> 211
    //   277: astore 4
    //   279: goto -68 -> 211
    //   282: astore 6
    //   284: aload_1
    //   285: ifnull +7 -> 292
    //   288: aload_1
    //   289: invokevirtual 188	java/io/FileInputStream:close	()V
    //   292: aload 6
    //   294: athrow
    //   295: astore 7
    //   297: goto -5 -> 292
    //   300: astore 5
    //   302: aload_2
    //   303: astore_1
    //   304: aload 5
    //   306: astore 6
    //   308: goto -24 -> 284
    //   311: astore_3
    //   312: goto -46 -> 266
    //
    // Exception table:
    //   from	to	target	type
    //   250	254	257	java/io/IOException
    //   221	233	262	java/lang/Exception
    //   270	274	277	java/io/IOException
    //   221	233	282	finally
    //   288	292	295	java/io/IOException
    //   233	250	300	finally
    //   233	250	311	java/lang/Exception
  }

  public XMediaplayerJNI.AudioType getAudioType()
  {
    return this.mXMediaplayerImpl.getAudioType();
  }

  public int getCurrentPosition()
  {
    return this.mXMediaplayerImpl.getCurrentPosition();
  }

  public int getDuration()
  {
    return this.mXMediaplayerImpl.getDuration();
  }

  public int getPlayState()
  {
    return this.mXMediaplayerImpl.getPlayState();
  }

  public boolean isPlaying()
  {
    return this.mXMediaplayerImpl.isPlaying();
  }

  public boolean isUseSystemPlayer()
  {
    return this.isUseSystemPlayer;
  }

  public void pause()
  {
    this.mXMediaplayerImpl.pause();
  }

  public void prepareAsync()
  {
    this.mXMediaplayerImpl.prepareAsync();
  }

  public void release()
  {
    this.mXMediaplayerImpl.release();
  }

  public void removeProxy()
  {
    PlayerUtil.setProxyHost(null);
    PlayerUtil.setProxyPort(0);
    PlayerUtil.setAuthorization(null);
  }

  public void reset()
  {
    this.mXMediaplayerImpl.reset();
  }

  public void seekTo(int paramInt)
  {
    this.mXMediaplayerImpl.seekTo(paramInt);
  }

  public void setAudioStreamType(int paramInt)
  {
    this.mXMediaplayerImpl.setAudioStreamType(paramInt);
  }

  public void setDataSource(FileDescriptor paramFileDescriptor, String paramString)
  {
    this.mPlayUrl = paramString;
    this.mXMediaplayerImpl.setDataSource(paramFileDescriptor, paramString);
  }

  public void setDataSource(String paramString)
  {
    this.mPlayUrl = paramString;
    this.mXMediaplayerImpl.setDataSource(paramString);
  }

  public void setDownloadBufferSize(long paramLong)
  {
    this.mXMediaplayerImpl.setDownloadBufferSize(paramLong);
  }

  public void setOnBufferingUpdateListener(XMediaPlayer.OnBufferingUpdateListener paramOnBufferingUpdateListener)
  {
    this.mOnBufferingUpdateListener = paramOnBufferingUpdateListener;
    this.mXMediaplayerImpl.setOnBufferingUpdateListener(this.mOnBufferingUpdateListener);
  }

  public void setOnCompletionListener(XMediaPlayer.OnCompletionListener paramOnCompletionListener)
  {
    this.mOnCompletionListener = paramOnCompletionListener;
    this.mXMediaplayerImpl.setOnCompletionListener(this.mOnCompletionListener);
  }

  public void setOnErrorListener(XMediaPlayer.OnErrorListener paramOnErrorListener)
  {
    this.mOnErrorListener = paramOnErrorListener;
    this.mXMediaplayerImpl.setOnErrorListener(new XMediaPlayerWrapper.1(this));
  }

  public void setOnInfoListener(XMediaPlayer.OnInfoListener paramOnInfoListener)
  {
    this.mOnInfoListener = paramOnInfoListener;
    this.mXMediaplayerImpl.setOnInfoListener(this.mOnInfoListener);
  }

  public void setOnPositionChangeListener(XMediaPlayer.OnPositionChangeListener paramOnPositionChangeListener)
  {
    this.mOnPositionChangeListener = paramOnPositionChangeListener;
    this.mXMediaplayerImpl.setOnPositionChangeListener(this.mOnPositionChangeListener);
  }

  public void setOnPreparedListener(XMediaPlayer.OnPreparedListener paramOnPreparedListener)
  {
    this.mOnPreparedListener = paramOnPreparedListener;
    this.mXMediaplayerImpl.setOnPreparedListener(this.mOnPreparedListener);
  }

  public void setOnSeekCompleteListener(XMediaPlayer.OnSeekCompleteListener paramOnSeekCompleteListener)
  {
    this.mOnSeekCompleteListener = paramOnSeekCompleteListener;
    this.mXMediaplayerImpl.setOnSeekCompleteListener(this.mOnSeekCompleteListener);
  }

  public void setProxy(String paramString1, int paramInt, String paramString2)
  {
    PlayerUtil.setProxyHost(paramString1);
    PlayerUtil.setProxyPort(paramInt);
    PlayerUtil.setAuthorization(paramString2);
  }

  public void setVolume(float paramFloat1, float paramFloat2)
  {
    this.mXMediaplayerImpl.setVolume(paramFloat1, paramFloat2);
  }

  public void setWakeMode(Context paramContext, int paramInt)
  {
    this.mXMediaplayerImpl.setWakeMode(paramContext, paramInt);
  }

  public void start()
  {
    this.mXMediaplayerImpl.start();
  }

  public void stop()
  {
    this.mXMediaplayerImpl.stop();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.player.XMediaPlayerWrapper
 * JD-Core Version:    0.6.0
 */