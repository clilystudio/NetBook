package com.ushaqi.zhuishushenqi.ui;

import android.view.View;
import android.view.View.OnClickListener;

final class h
  implements View.OnClickListener
{
  h(AudioBookPlayActivity paramAudioBookPlayActivity)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.startActivity(AudiobookInfoActivity.a(this.a, AudioBookPlayActivity.d(this.a)));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.h
 * JD-Core Version:    0.6.0
 */