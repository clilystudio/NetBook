package com.ushaqi.zhuishushenqi.ui;

import android.view.View;
import com.ushaqi.zhuishushenqi.util.e;
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
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.x
 * JD-Core Version:    0.6.0
 */