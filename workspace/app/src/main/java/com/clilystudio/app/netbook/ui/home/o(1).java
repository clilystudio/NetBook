package com.clilystudio.app.netbook.ui.home;

import android.util.Log;
import com.ximalaya.ting.android.opensdk.datatrasfer.IDataCallBack;
import com.ximalaya.ting.android.opensdk.model.album.BatchAlbumList;

final class o
  implements IDataCallBack<BatchAlbumList>
{
  o(HomeShelfFragment paramHomeShelfFragment)
  {
  }

  public final void onError(int paramInt, String paramString)
  {
    Log.e(HomeShelfFragment.f(), paramString);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.home.o
 * JD-Core Version:    0.6.2
 */