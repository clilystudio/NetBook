package com.ximalaya.ting.android.opensdk.player.receive;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.ximalaya.ting.android.opensdk.player.service.XmPlayerService;

public class PlayerReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    XmPlayerService localXmPlayerService = XmPlayerService.getPlayerSrvice();
    if (localXmPlayerService != null)
    {
      if (!paramIntent.getAction().equals("com.ximalaya.ting.android.byd.ACTION_CONTROL_PLAY_NEXT"))
        break label26;
      localXmPlayerService.playNext();
    }
    label26: 
    do
    {
      return;
      if (!paramIntent.getAction().equals("com.ximalaya.ting.android.byd.ACTION_CONTROL_PLAY_PRE"))
        continue;
      localXmPlayerService.playPre();
      return;
    }
    while (!paramIntent.getAction().equals("com.ximalaya.ting.android.byd.ACTION_CONTROL_START_PAUSE"));
    if (localXmPlayerService.isPlaying())
    {
      localXmPlayerService.pausePlay();
      return;
    }
    localXmPlayerService.startPlay();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.receive.PlayerReceiver
 * JD-Core Version:    0.6.0
 */