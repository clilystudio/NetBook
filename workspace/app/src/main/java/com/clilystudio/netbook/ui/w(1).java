package com.clilystudio.netbook.ui;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.ximalaya.ting.android.opensdk.model.album.Album;
import java.util.List;

final class w
  implements AdapterView.OnItemClickListener
{
  w(AudiobookCategoryListActivity paramAudiobookCategoryListActivity)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if ((paramInt >= 0) && (paramInt < AudiobookCategoryListActivity.a(this.a).size()))
    {
      Album localAlbum = (Album)AudiobookCategoryListActivity.a(this.a).get(paramInt);
      AudiobookCategoryListActivity.a(this.a, localAlbum);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.w
 * JD-Core Version:    0.6.0
 */