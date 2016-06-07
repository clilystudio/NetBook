package android.support.v4.media;

import android.media.AudioManager.OnAudioFocusChangeListener;

class TransportMediatorJellybeanMR2$4
  implements AudioManager.OnAudioFocusChangeListener
{
  public void onAudioFocusChange(int paramInt)
  {
    this.this$0.mTransportCallback.handleAudioFocusChange(paramInt);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.TransportMediatorJellybeanMR2.4
 * JD-Core Version:    0.6.0
 */