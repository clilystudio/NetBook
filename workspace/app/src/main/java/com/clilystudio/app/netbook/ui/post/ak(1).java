package com.clilystudio.app.netbook.ui.post;

import android.os.AsyncTask.Status;
import android.support.design.widget.am;
import android.view.View;
import com.handmark.pulltorefresh.library.j;

final class ak
  implements j
{
  ak(BookHelpListActivity paramBookHelpListActivity)
  {
  }

  public final void a()
  {
    if ((BookHelpListActivity.e(this.a) == null) || (BookHelpListActivity.e(this.a).getStatus() == AsyncTask.Status.FINISHED))
    {
      BookHelpListActivity.p(this.a).setVisibility(0);
      if (!am.a(BookHelpListActivity.h(this.a)))
        BookHelpListActivity.h(this.a).cancel(true);
      BookHelpListActivity.a(this.a, new au(this.a, (byte)0));
      au localau = BookHelpListActivity.e(this.a);
      String[] arrayOfString = new String[2];
      arrayOfString[0] = BookHelpListActivity.f(this.a);
      arrayOfString[1] = BookHelpListActivity.g(this.a);
      localau.b(arrayOfString);
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.ak
 * JD-Core Version:    0.6.2
 */