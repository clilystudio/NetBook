package com.ximalaya.ting.android.opensdk.player.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class XmPlayerAudioFocusControl$2 extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    if (!str.equals("com.ximalaya.ting.android.action.ACTION_NOTIFICATION_EXIT"))
    {
      if ((!str.equals("android.intent.action.HEADSET_PLUG")) && (!"android.media.AUDIO_BECOMING_NOISY".equals(str)))
        break label68;
      if (paramIntent.getIntExtra("state", 0) != 1)
      {
        XmPlayerService localXmPlayerService = XmPlayerService.getPlayerSrvice();
        if ((localXmPlayerService != null) && (localXmPlayerService.isPlaying()))
          localXmPlayerService.pausePlay();
      }
    }
    label68: 
    do
      return;
    while ((str.equals("android.net.conn.CONNECTIVITY_CHANGE")) || (str.equals("com.ximalaya.ting.android.action.ACTION_NOTIFICATION_SWITCH_PLAY_PAUSE")) || (str.equals("com.ximalaya.ting.android.action.ACTION_NOTIFICATION_NEXT")));
    str.equals("com.ximalaya.ting.android.action.ACTION_NOTIFICATION_PRE");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.XmPlayerAudioFocusControl.2
 * JD-Core Version:    0.6.0
 */