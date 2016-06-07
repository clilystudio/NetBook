package com.ushaqi.zhuishushenqi.ui.home;

import android.widget.TextView;
import com.arcsoft.hpay100.a.a;
import com.ushaqi.zhuishushenqi.util.as;
import com.ushaqi.zhuishushenqi.util.e;
import com.ushaqi.zhuishushenqi.util.t;
import com.ximalaya.ting.android.opensdk.model.track.Track;
import com.ximalaya.ting.android.opensdk.player.service.IXmPlayerStatusListener;
import com.ximalaya.ting.android.opensdk.player.service.XmPlayerException;
import java.util.List;

final class x
  implements IXmPlayerStatusListener
{
  x(HomeShelfFragment paramHomeShelfFragment)
  {
  }

  public final void onBufferProgress(int paramInt)
  {
  }

  public final void onBufferingStart()
  {
    HomeShelfFragment.a(this.a, false);
    e.a(this.a.getActivity(), "缓冲中!");
  }

  public final void onBufferingStop()
  {
    HomeShelfFragment.a(this.a, true);
  }

  public final boolean onError(XmPlayerException paramXmPlayerException)
  {
    return false;
  }

  public final void onPlayPause()
  {
    e.a(false);
    HomeShelfFragment.o(this.a);
    HomeShelfFragment.a(this.a, false);
  }

  public final void onPlayProgress(int paramInt1, int paramInt2)
  {
    HomeShelfFragment.p(this.a).setText(t.b(paramInt1) + "/" + t.b(paramInt2));
    e.b(t.b(paramInt1) + "/" + t.b(paramInt2));
  }

  public final void onPlayStart()
  {
    e.a(true);
    HomeShelfFragment.o(this.a);
    a.v(this.a.getActivity());
  }

  public final void onPlayStop()
  {
    HomeShelfFragment.a(this.a, false);
  }

  public final void onSoundPlayComplete()
  {
  }

  public final void onSoundPrepared()
  {
  }

  public final void onSoundSwitch(int paramInt1, int paramInt2, int paramInt3)
  {
    HomeShelfFragment.d(this.a);
    Track localTrack = (Track)as.j().get(paramInt1);
    HomeShelfFragment.a(this.a, localTrack);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.home.x
 * JD-Core Version:    0.6.0
 */