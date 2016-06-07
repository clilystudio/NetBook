package com.ximalaya.ting.android.opensdk.player.service;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;

public class XmPlayerConfig
{
  private static final String KEY_BREAKPOINT_RESUME = "KEY_BREAKPOINT_RESUME";
  private static final String KEY_USE_RADIO_HIGH_BITRATE = "KEY_USE_RADIO_HIGH_BITRATE";
  private static final String KEY_USE_SYSTEM_PLAYER = "KEY_USE_SYSTEM_PLAYER";
  private static final String KEY_USE_TRACK_HIGH_BITRATE = "KEY_USE_TRACK_HIGH_BITRATE";
  private static final int PREFERENCE_MODE = 0;
  private static final String PREFERENCE_NAME = "xmplayer_config";
  private static XmPlayerConfig sInstance;
  private static byte[] sLock = new byte[0];
  private Context mAppCtx;
  private SharedPreferences mPreferences;

  private XmPlayerConfig(Context paramContext)
  {
    this.mAppCtx = paramContext.getApplicationContext();
    init();
  }

  @TargetApi(9)
  private void apply(SharedPreferences.Editor paramEditor)
  {
    if (Build.VERSION.SDK_INT >= 9)
    {
      paramEditor.apply();
      return;
    }
    paramEditor.commit();
  }

  public static XmPlayerConfig getInstance(Context paramContext)
  {
    if (sInstance == null);
    synchronized (sLock)
    {
      if (sInstance == null)
        sInstance = new XmPlayerConfig(paramContext);
      return sInstance;
    }
  }

  private void init()
  {
    this.mPreferences = this.mAppCtx.getSharedPreferences("xmplayer_config", 0);
  }

  public boolean isBreakpointResume()
  {
    return this.mPreferences.getBoolean("KEY_BREAKPOINT_RESUME", true);
  }

  public boolean isUseRadioHighBitrate()
  {
    return this.mPreferences.getBoolean("KEY_USE_RADIO_HIGH_BITRATE", false);
  }

  protected boolean isUseSystemPlayer()
  {
    return this.mPreferences.getBoolean("KEY_USE_SYSTEM_PLAYER", false);
  }

  public boolean isUseTrackHighBitrate()
  {
    return this.mPreferences.getBoolean("KEY_USE_TRACK_HIGH_BITRATE", true);
  }

  public void release()
  {
    synchronized (sLock)
    {
      sInstance = null;
      return;
    }
  }

  public void setBreakpointResume(boolean paramBoolean)
  {
    apply(this.mPreferences.edit().putBoolean("KEY_BREAKPOINT_RESUME", paramBoolean));
  }

  public void setUseRadioHighBitrate(boolean paramBoolean)
  {
    apply(this.mPreferences.edit().putBoolean("KEY_USE_RADIO_HIGH_BITRATE", paramBoolean));
  }

  protected void setUseSystemPlayer(boolean paramBoolean)
  {
    apply(this.mPreferences.edit().putBoolean("KEY_USE_SYSTEM_PLAYER", paramBoolean));
  }

  public void setUseTrackHighBitrate(boolean paramBoolean)
  {
    apply(this.mPreferences.edit().putBoolean("KEY_USE_TRACK_HIGH_BITRATE", paramBoolean));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.XmPlayerConfig
 * JD-Core Version:    0.6.0
 */