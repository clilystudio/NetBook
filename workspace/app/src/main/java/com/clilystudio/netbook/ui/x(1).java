package com.clilystudio.netbook.ui;

import android.view.View;
import com.clilystudio.netbook.util.e;
import com.ximalaya.ting.android.opensdk.datatrasfer.IDataCallBack;
import com.ximalaya.ting.android.opensdk.model.album.AlbumList;

final class x
  implements IDataCallBack<AlbumList>
{
  x(AudiobookCategoryListActivity paramAudiobookCategoryListActivity, boolean paramBoolean)
  {
  }

  public final void onError(int paramInt, String paramString)
  {
    AudiobookCategoryListActivity.b(this.b).setVisibility(8);
    if (this.a)
    {
      this.b.h();
      return;
    }
    e.a(this.b, "加载失败，请检查网络或稍后再试");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.x
 * JD-Core Version:    0.6.0
 */