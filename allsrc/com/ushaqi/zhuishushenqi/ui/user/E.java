package com.ushaqi.zhuishushenqi.ui.user;

import android.os.AsyncTask.Status;
import android.view.View;
import com.handmark.pulltorefresh.library.j;

final class E
  implements j
{
  E(MyTopicFragment paramMyTopicFragment)
  {
  }

  public final void a()
  {
    if ((MyTopicFragment.e(this.a) == null) || (MyTopicFragment.e(this.a).getStatus() == AsyncTask.Status.FINISHED))
    {
      MyTopicFragment.i(this.a).setVisibility(0);
      if ((MyTopicFragment.f(this.a) != null) && (MyTopicFragment.f(this.a).getStatus() != AsyncTask.Status.FINISHED) && (!MyTopicFragment.f(this.a).isCancelled()))
        MyTopicFragment.f(this.a).cancel(true);
      MyTopicFragment.a(this.a, new F(this.a, 0));
      F localF = MyTopicFragment.e(this.a);
      String[] arrayOfString = new String[1];
      arrayOfString[0] = MyTopicFragment.b(this.a);
      localF.b(arrayOfString);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.user.E
 * JD-Core Version:    0.6.0
 */