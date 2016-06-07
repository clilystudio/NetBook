package com.clilystudio.netbook.ui;

import com.ximalaya.ting.android.opensdk.datatrasfer.IDataCallBack;
import com.ximalaya.ting.android.opensdk.model.track.TrackList;

final class D
  implements IDataCallBack<TrackList>
{
  D(AudiobookInfoActivity paramAudiobookInfoActivity)
  {
  }

  public final void onError(int paramInt, String paramString)
  {
    AudiobookInfoActivity.a(this.a, 2);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.D
 * JD-Core Version:    0.6.0
 */