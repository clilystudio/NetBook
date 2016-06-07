package com.ushaqi.zhuishushenqi.ui;

import com.ushaqi.zhuishushenqi.widget.LinearListView;
import com.ximalaya.ting.android.opensdk.player.service.IXmPlayerStatusListener;
import com.ximalaya.ting.android.opensdk.player.service.XmPlayerException;

final class F
  implements IXmPlayerStatusListener
{
  F(AudiobookInfoActivity paramAudiobookInfoActivity)
  {
  }

  public final void onBufferProgress(int paramInt)
  {
  }

  public final void onBufferingStart()
  {
  }

  public final void onBufferingStop()
  {
  }

  public final boolean onError(XmPlayerException paramXmPlayerException)
  {
    return false;
  }

  public final void onPlayPause()
  {
  }

  public final void onPlayProgress(int paramInt1, int paramInt2)
  {
  }

  public final void onPlayStart()
  {
  }

  public final void onPlayStop()
  {
  }

  public final void onSoundPlayComplete()
  {
  }

  public final void onSoundPrepared()
  {
  }

  public final void onSoundSwitch(int paramInt1, int paramInt2, int paramInt3)
  {
    if (AudiobookInfoActivity.q(this.a))
    {
      AudiobookInfoActivity.h(this.a).setPlayButtonDefault(AudiobookInfoActivity.m(this.a));
      AudiobookInfoActivity.c(this.a, 1 + AudiobookInfoActivity.m(this.a));
      AudiobookInfoActivity.h(this.a).a(AudiobookInfoActivity.m(this.a), true);
      AudiobookInfoActivity.r(this.a);
      return;
    }
    AudiobookInfoActivity.f(this.a, true);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.F
 * JD-Core Version:    0.6.0
 */