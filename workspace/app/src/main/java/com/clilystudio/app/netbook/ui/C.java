package com.clilystudio.app.netbook.ui;

import com.ximalaya.ting.android.opensdk.datatrasfer.IDataCallBack;
import com.ximalaya.ting.android.opensdk.model.album.BatchAlbumList;

final class C
  implements IDataCallBack<BatchAlbumList>
{
  C(AudiobookInfoActivity paramAudiobookInfoActivity)
  {
  }

  public final void onError(int paramInt, String paramString)
  {
    AudiobookInfoActivity.a(this.a, 2);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.C
 * JD-Core Version:    0.6.2
 */