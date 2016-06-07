package com.ximalaya.ting.android.opensdk.player.receive;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import com.ximalaya.ting.android.opensdk.player.service.XmPlayerService;

public class WireControlReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    XmPlayerService localXmPlayerService = XmPlayerService.getPlayerSrvice();
    if ((localXmPlayerService == null) || (!"android.intent.action.MEDIA_BUTTON".equals(paramIntent.getAction())));
    int i;
    int k;
    while (true)
    {
      return;
      KeyEvent localKeyEvent = (KeyEvent)paramIntent.getParcelableExtra("android.intent.extra.KEY_EVENT");
      if (localKeyEvent == null)
        continue;
      if (localKeyEvent.getAction() != 1)
        break;
      i = 1;
      if (i == 0)
        continue;
      int j = localKeyEvent.getKeyCode();
      if (localKeyEvent.getEventTime() - localKeyEvent.getDownTime() <= 2000L)
        break label158;
      k = 1;
      label82: switch (j)
      {
      default:
      case 79:
      case 85:
      case 126:
      case 127:
      case 87:
      case 88:
      }
    }
    while (true)
    {
      try
      {
        abortBroadcast();
        return;
      }
      catch (Exception localException)
      {
        return;
      }
      i = 0;
      break;
      label158: k = 0;
      break label82;
      if (localXmPlayerService.isPlaying())
      {
        localXmPlayerService.pausePlay();
        continue;
      }
      localXmPlayerService.startPlay();
      continue;
      if (k != 0)
        continue;
      localXmPlayerService.playNext();
      continue;
      if (k != 0)
        continue;
      localXmPlayerService.playPre();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.receive.WireControlReceiver
 * JD-Core Version:    0.6.0
 */