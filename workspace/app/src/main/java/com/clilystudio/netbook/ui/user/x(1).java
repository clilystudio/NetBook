package com.clilystudio.netbook.ui.user;

import android.os.AsyncTask.Status;
import android.view.View;
import com.handmark.pulltorefresh.library.j;

final class x
  implements j
{
  x(MyFavTopicFragment paramMyFavTopicFragment)
  {
  }

  public final void a()
  {
    if ((MyFavTopicFragment.e(this.a) == null) || (MyFavTopicFragment.e(this.a).getStatus() == AsyncTask.Status.FINISHED))
    {
      MyFavTopicFragment.i(this.a).setVisibility(0);
      if ((MyFavTopicFragment.f(this.a) != null) && (MyFavTopicFragment.f(this.a).getStatus() != AsyncTask.Status.FINISHED) && (!MyFavTopicFragment.f(this.a).isCancelled()))
        MyFavTopicFragment.f(this.a).cancel(true);
      MyFavTopicFragment.a(this.a, new z(this.a, 0));
      z localz = MyFavTopicFragment.e(this.a);
      String[] arrayOfString = new String[1];
      arrayOfString[0] = MyFavTopicFragment.b(this.a);
      localz.b(arrayOfString);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.user.x
 * JD-Core Version:    0.6.0
 */