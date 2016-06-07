package com.ximalaya.ting.android.opensdk.player.service;

import android.content.Context;
import com.ximalaya.ting.android.player.XMediaPlayerWrapper;
import com.ximalaya.ting.android.player.XMediaplayerImpl;

public class XmMediaPlayerFactory
{
  public static XMediaplayerImpl getMediaPlayer(Context paramContext)
  {
    XmPlayerConfig localXmPlayerConfig = XmPlayerConfig.getInstance(paramContext);
    XMediaPlayerWrapper localXMediaPlayerWrapper = new XMediaPlayerWrapper();
    localXmPlayerConfig.setUseSystemPlayer(localXMediaPlayerWrapper.isUseSystemPlayer());
    return localXMediaPlayerWrapper;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.XmMediaPlayerFactory
 * JD-Core Version:    0.6.0
 */