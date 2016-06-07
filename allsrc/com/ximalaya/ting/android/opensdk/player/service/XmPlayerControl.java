package com.ximalaya.ting.android.opensdk.player.service;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.ximalaya.ting.android.player.XMediaPlayer.OnBufferingUpdateListener;
import com.ximalaya.ting.android.player.XMediaPlayer.OnCompletionListener;
import com.ximalaya.ting.android.player.XMediaPlayer.OnErrorListener;
import com.ximalaya.ting.android.player.XMediaPlayer.OnInfoListener;
import com.ximalaya.ting.android.player.XMediaPlayer.OnPositionChangeListener;
import com.ximalaya.ting.android.player.XMediaPlayer.OnPreparedListener;
import com.ximalaya.ting.android.player.XMediaPlayer.OnSeekCompleteListener;
import com.ximalaya.ting.android.player.XMediaplayerImpl;

public class XmPlayerControl
{
  private static final String TAG = "XmPlayerControl";
  private Context mAppCtx;
  private boolean mBuffering = true;
  private int mDuration;
  private String mLastUrl;
  private XMediaplayerImpl mMediaPlayer;
  private int mOffset;
  private XMediaPlayer.OnBufferingUpdateListener mOnBufferingUpdateListener;
  private XMediaPlayer.OnCompletionListener mOnCompletionListener;
  private XMediaPlayer.OnErrorListener mOnErrorListener;
  private XMediaPlayer.OnInfoListener mOnInfoListener;
  private XMediaPlayer.OnPositionChangeListener mOnPositionChangeListener;
  private XMediaPlayer.OnPreparedListener mOnPreparedListener;
  private XMediaPlayer.OnSeekCompleteListener mOnSeekCompleteListener;
  private IXmPlayerStatusListener mPlayerStatusListener;
  private boolean mShoudPlay = false;
  private volatile int mState;

  public XmPlayerControl(Context paramContext)
  {
    this.mAppCtx = paramContext.getApplicationContext();
  }

  private void initMediaPlayerListener()
  {
    if (this.mOnCompletionListener == null)
      this.mOnCompletionListener = new XmPlayerControl.1(this);
    if (this.mOnPreparedListener == null)
      this.mOnPreparedListener = new XmPlayerControl.2(this);
    if (this.mOnSeekCompleteListener == null)
      this.mOnSeekCompleteListener = new XmPlayerControl.3(this);
    if (this.mOnErrorListener == null)
      this.mOnErrorListener = new XmPlayerControl.4(this);
    if (this.mOnInfoListener == null)
      this.mOnInfoListener = new XmPlayerControl.5(this);
    if (this.mOnBufferingUpdateListener == null)
      this.mOnBufferingUpdateListener = new XmPlayerControl.6(this);
    if (this.mOnPositionChangeListener == null)
      this.mOnPositionChangeListener = new XmPlayerControl.7(this);
  }

  private void initPlayerDataSource()
  {
    if (this.mMediaPlayer == null)
      this.mMediaPlayer = setupPlayer();
    while (true)
    {
      this.mMediaPlayer.setDataSource(this.mLastUrl);
      this.mState = 1;
      this.mMediaPlayer.prepareAsync();
      this.mState = 9;
      this.mDuration = 0;
      return;
      this.mMediaPlayer.reset();
    }
  }

  // ERROR //
  private void releaseLastPlayer()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 113	com/ximalaya/ting/android/opensdk/player/service/XmPlayerControl:mMediaPlayer	Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
    //   4: ifnonnull +4 -> 8
    //   7: return
    //   8: aload_0
    //   9: getfield 113	com/ximalaya/ting/android/opensdk/player/service/XmPlayerControl:mMediaPlayer	Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
    //   12: aconst_null
    //   13: invokeinterface 140 2 0
    //   18: aload_0
    //   19: getfield 113	com/ximalaya/ting/android/opensdk/player/service/XmPlayerControl:mMediaPlayer	Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
    //   22: aconst_null
    //   23: invokeinterface 144 2 0
    //   28: aload_0
    //   29: getfield 113	com/ximalaya/ting/android/opensdk/player/service/XmPlayerControl:mMediaPlayer	Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
    //   32: aconst_null
    //   33: invokeinterface 148 2 0
    //   38: aload_0
    //   39: getfield 113	com/ximalaya/ting/android/opensdk/player/service/XmPlayerControl:mMediaPlayer	Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
    //   42: aconst_null
    //   43: invokeinterface 152 2 0
    //   48: aload_0
    //   49: getfield 113	com/ximalaya/ting/android/opensdk/player/service/XmPlayerControl:mMediaPlayer	Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
    //   52: aconst_null
    //   53: invokeinterface 156 2 0
    //   58: aload_0
    //   59: getfield 113	com/ximalaya/ting/android/opensdk/player/service/XmPlayerControl:mMediaPlayer	Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
    //   62: aconst_null
    //   63: invokeinterface 160 2 0
    //   68: aload_0
    //   69: getfield 113	com/ximalaya/ting/android/opensdk/player/service/XmPlayerControl:mMediaPlayer	Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
    //   72: invokeinterface 163 1 0
    //   77: aload_0
    //   78: getfield 113	com/ximalaya/ting/android/opensdk/player/service/XmPlayerControl:mMediaPlayer	Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
    //   81: invokeinterface 166 1 0
    //   86: aload_0
    //   87: aconst_null
    //   88: putfield 113	com/ximalaya/ting/android/opensdk/player/service/XmPlayerControl:mMediaPlayer	Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
    //   91: return
    //   92: astore_3
    //   93: aload_3
    //   94: invokevirtual 169	java/lang/IllegalStateException:printStackTrace	()V
    //   97: aload_0
    //   98: getfield 113	com/ximalaya/ting/android/opensdk/player/service/XmPlayerControl:mMediaPlayer	Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
    //   101: invokeinterface 166 1 0
    //   106: aload_0
    //   107: aconst_null
    //   108: putfield 113	com/ximalaya/ting/android/opensdk/player/service/XmPlayerControl:mMediaPlayer	Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
    //   111: return
    //   112: astore 4
    //   114: aload 4
    //   116: invokevirtual 170	java/lang/Exception:printStackTrace	()V
    //   119: goto -13 -> 106
    //   122: astore_1
    //   123: aload_0
    //   124: getfield 113	com/ximalaya/ting/android/opensdk/player/service/XmPlayerControl:mMediaPlayer	Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
    //   127: invokeinterface 166 1 0
    //   132: aload_0
    //   133: aconst_null
    //   134: putfield 113	com/ximalaya/ting/android/opensdk/player/service/XmPlayerControl:mMediaPlayer	Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
    //   137: aload_1
    //   138: athrow
    //   139: astore_2
    //   140: aload_2
    //   141: invokevirtual 170	java/lang/Exception:printStackTrace	()V
    //   144: goto -12 -> 132
    //   147: astore 5
    //   149: aload 5
    //   151: invokevirtual 170	java/lang/Exception:printStackTrace	()V
    //   154: goto -68 -> 86
    //
    // Exception table:
    //   from	to	target	type
    //   8	77	92	java/lang/IllegalStateException
    //   97	106	112	java/lang/Exception
    //   8	77	122	finally
    //   93	97	122	finally
    //   123	132	139	java/lang/Exception
    //   77	86	147	java/lang/Exception
  }

  private XMediaplayerImpl setupPlayer()
  {
    initMediaPlayerListener();
    XMediaplayerImpl localXMediaplayerImpl = XmMediaPlayerFactory.getMediaPlayer(this.mAppCtx);
    localXMediaplayerImpl.setOnBufferingUpdateListener(this.mOnBufferingUpdateListener);
    localXMediaplayerImpl.setOnCompletionListener(this.mOnCompletionListener);
    localXMediaplayerImpl.setOnPreparedListener(this.mOnPreparedListener);
    localXMediaplayerImpl.setOnSeekCompleteListener(this.mOnSeekCompleteListener);
    localXMediaplayerImpl.setOnErrorListener(this.mOnErrorListener);
    localXMediaplayerImpl.setOnInfoListener(this.mOnInfoListener);
    localXMediaplayerImpl.setOnPositionChangeListener(this.mOnPositionChangeListener);
    return localXMediaplayerImpl;
  }

  public String getCurPlayUrl()
  {
    return this.mLastUrl;
  }

  public int getCurrentPos()
  {
    switch (this.mState)
    {
    default:
      return 0;
    case 3:
    case 4:
    case 5:
    case 6:
    }
    return this.mMediaPlayer.getCurrentPosition();
  }

  public int getDuration()
  {
    return this.mDuration;
  }

  public int getPlayerState()
  {
    return this.mState;
  }

  public void init(String paramString, int paramInt)
  {
    if (TextUtils.isEmpty(paramString))
    {
      Log.e("XmPlayerControl", "Play Track with null url, return");
      return;
    }
    this.mShoudPlay = false;
    this.mOffset = paramInt;
    if ((!TextUtils.isEmpty(this.mLastUrl)) && (paramString.equals(this.mLastUrl)))
    {
      switch (this.mState)
      {
      case 2:
      case 3:
      case 5:
      case 6:
      default:
        return;
      case 0:
      case 4:
      case 7:
      case 8:
        initPlayerDataSource();
        return;
      case 1:
      }
      this.mMediaPlayer.prepareAsync();
      this.mState = 9;
      return;
    }
    this.mLastUrl = paramString;
    initPlayerDataSource();
  }

  public void initAndPlay(String paramString, int paramInt)
  {
    init(paramString, paramInt);
    this.mShoudPlay = true;
  }

  public boolean isOnlineSource()
  {
    return (!TextUtils.isEmpty(this.mLastUrl)) && (this.mLastUrl.contains("http://"));
  }

  public boolean isPlaying()
  {
    if (this.mMediaPlayer == null)
      return false;
    return this.mMediaPlayer.isPlaying();
  }

  public boolean pause()
  {
    int i;
    switch (this.mState)
    {
    default:
      i = 0;
    case 3:
    }
    do
    {
      return i;
      this.mMediaPlayer.pause();
      this.mState = 5;
      i = 1;
    }
    while (this.mPlayerStatusListener == null);
    this.mPlayerStatusListener.onPlayPause();
    return i;
  }

  public boolean play()
  {
    boolean bool = true;
    switch (this.mState)
    {
    case 7:
    case 8:
    default:
      bool = false;
    case 3:
    case 2:
    case 5:
    case 6:
    case 9:
    case 1:
    case 4:
    }
    do
    {
      do
      {
        return bool;
        this.mMediaPlayer.start();
        if (this.mOffset > 0)
        {
          Log.e("XmPlayerControl", "Start Play By Seek " + this.mOffset);
          this.mMediaPlayer.seekTo(this.mOffset);
          this.mOffset = 0;
        }
        this.mState = 3;
      }
      while (this.mPlayerStatusListener == null);
      this.mPlayerStatusListener.onPlayStart();
      return bool;
      this.mShoudPlay = bool;
      return bool;
      this.mMediaPlayer.prepareAsync();
      this.mState = 9;
      this.mShoudPlay = bool;
      return bool;
      this.mMediaPlayer.prepareAsync();
      this.mState = 9;
      this.mShoudPlay = bool;
    }
    while (this.mPlayerStatusListener == null);
    this.mPlayerStatusListener.onPlayStart();
    return bool;
  }

  public void release()
  {
    this.mState = 8;
    releaseLastPlayer();
  }

  public boolean seekTo(int paramInt)
  {
    switch (this.mState)
    {
    case 4:
    case 7:
    case 8:
    default:
      return false;
    case 2:
    case 3:
    case 5:
    case 6:
      this.mMediaPlayer.seekTo(paramInt);
      return true;
    case 9:
    }
    this.mOffset = paramInt;
    return true;
  }

  public void setPlayerStatusListener(IXmPlayerStatusListener paramIXmPlayerStatusListener)
  {
    this.mPlayerStatusListener = paramIXmPlayerStatusListener;
  }

  public void setVolume(float paramFloat1, float paramFloat2)
  {
    if (this.mMediaPlayer == null)
      return;
    this.mMediaPlayer.setVolume(paramFloat1, paramFloat2);
  }

  public boolean stop()
  {
    int i = 1;
    switch (this.mState)
    {
    case 4:
    case 7:
    case 8:
    default:
      i = 0;
    case 1:
    case 2:
    case 3:
    case 5:
    case 6:
      do
      {
        return i;
        this.mMediaPlayer.stop();
        this.mState = 4;
      }
      while (this.mPlayerStatusListener == null);
      this.mPlayerStatusListener.onPlayStop();
      return i;
    case 9:
    }
    this.mShoudPlay = false;
    return i;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.XmPlayerControl
 * JD-Core Version:    0.6.0
 */