package com.ushaqi.zhuishushenqi.ui.home;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.home.o
 * JD-Core Version:    0.6.0
 */