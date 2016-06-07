package com.clilystudio.netbook.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.ximalaya.ting.android.opensdk.model.tag.Tag;

final class v
  implements View.OnClickListener
{
  v(AudiobookCategoryActivity paramAudiobookCategoryActivity, Tag paramTag)
  {
  }

  public final void onClick(View paramView)
  {
    this.b.startActivity(AudiobookCategoryListActivity.a(this.b, this.a.getTagName()));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.v
 * JD-Core Version:    0.6.0
 */