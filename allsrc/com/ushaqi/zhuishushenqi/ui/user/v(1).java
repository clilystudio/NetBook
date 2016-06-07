package com.ushaqi.zhuishushenqi.ui.user;

import android.os.AsyncTask.Status;
import android.view.View;
import android.widget.TextView;
import com.ushaqi.zhuishushenqi.widget.LabelPtrListView;

final class v
  implements Runnable
{
  v(u paramu)
  {
  }

  public final void run()
  {
    if (MyFavTopicFragment.b(this.a.a) == null)
    {
      MyFavTopicFragment.c(this.a.a).setVisibility(8);
      MyFavTopicFragment.a(this.a.a).setVisibility(0);
      MyFavTopicFragment.a(this.a.a).setText("请登录后查看");
      MyFavTopicFragment.d(this.a.a).n();
      return;
    }
    if ((MyFavTopicFragment.e(this.a.a) != null) && (MyFavTopicFragment.e(this.a.a).getStatus() != AsyncTask.Status.FINISHED) && (!MyFavTopicFragment.e(this.a.a).isCancelled()))
      MyFavTopicFragment.e(this.a.a).cancel(true);
    MyFavTopicFragment.a(this.a.a, new A(this.a.a, 0));
    A localA = MyFavTopicFragment.f(this.a.a);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = MyFavTopicFragment.b(this.a.a);
    localA.b(arrayOfString);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.user.v
 * JD-Core Version:    0.6.0
 */