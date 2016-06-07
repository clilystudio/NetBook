package com.ushaqi.zhuishushenqi.ui;

import com.ushaqi.zhuishushenqi.widget.ScrollLoadListView;

final class l
  implements Runnable
{
  l(AudioBookPlayActivity paramAudioBookPlayActivity)
  {
  }

  public final void run()
  {
    int i = AudioBookPlayActivity.s(this.a).getFirstVisiblePosition();
    if (i >= AudioBookPlayActivity.k(this.a))
    {
      AudioBookPlayActivity.s(this.a).smoothScrollToPosition(AudioBookPlayActivity.k(this.a));
      return;
    }
    AudioBookPlayActivity.s(this.a).smoothScrollToPosition(AudioBookPlayActivity.k(this.a) + (AudioBookPlayActivity.s(this.a).getLastVisiblePosition() - i) / 2);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.l
 * JD-Core Version:    0.6.0
 */