package com.ushaqi.zhuishushenqi.ui.post;

import android.os.AsyncTask.Status;
import android.support.design.widget.am;
import android.view.View;
import com.handmark.pulltorefresh.library.j;

final class aP
  implements j
{
  aP(BookTopicListFragment paramBookTopicListFragment)
  {
  }

  public final void a()
  {
    if ((BookTopicListFragment.b(this.a) == null) || (BookTopicListFragment.b(this.a).getStatus() == AsyncTask.Status.FINISHED))
    {
      this.a.c.setVisibility(0);
      if (!am.a(BookTopicListFragment.i(this.a)))
        BookTopicListFragment.i(this.a).cancel(true);
      BookTopicListFragment.a(this.a, new aQ(this.a, 0));
      aQ localaQ = BookTopicListFragment.b(this.a);
      String[] arrayOfString = new String[2];
      arrayOfString[0] = this.a.a();
      arrayOfString[1] = this.a.f;
      localaQ.b(arrayOfString);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.aP
 * JD-Core Version:    0.6.0
 */