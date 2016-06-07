package com.ximalaya.ting.android.opensdk.player.service;

import android.media.AudioManager;
import android.media.AudioManager.OnAudioFocusChangeListener;

class XmPlayerAudioFocusControl$4
  implements AudioManager.OnAudioFocusChangeListener
{
  private boolean mIsStopAudio;

  public void onAudioFocusChange(int paramInt)
  {
    XmPlayerService localXmPlayerService = XmPlayerService.getPlayerSrvice();
    if (paramInt == -1)
    {
      if (localXmPlayerService != null)
        localXmPlayerService.pausePlay();
      if (XmPlayerAudioFocusControl.access$2(this.this$0) != null)
        XmPlayerAudioFocusControl.access$2(this.this$0).abandonAudioFocus(XmPlayerAudioFocusControl.access$3(this.this$0));
    }
    do
      while (true)
      {
        return;
        if (paramInt == -2)
        {
          if ((localXmPlayerService == null) || (!localXmPlayerService.isPlaying()))
            continue;
          localXmPlayerService.pausePlay();
          this.mIsStopAudio = true;
          return;
        }
        if (paramInt == 2)
          continue;
        if (paramInt == 1)
        {
          if ((localXmPlayerService == null) || (!localXmPlayerService.isPlaying()) || (!this.mIsStopAudio))
            continue;
          localXmPlayerService.startPlay();
          this.mIsStopAudio = false;
          localXmPlayerService.setVolume(1.0F, 1.0F);
          return;
        }
        if (paramInt != -3)
          break;
        if (localXmPlayerService == null)
          continue;
        localXmPlayerService.setVolume(0.3F, 0.3F);
        return;
      }
    while ((paramInt != 3) || (localXmPlayerService == null));
    localXmPlayerService.setVolume(0.3F, 0.3F);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.XmPlayerAudioFocusControl.4
 * JD-Core Version:    0.6.0
 */