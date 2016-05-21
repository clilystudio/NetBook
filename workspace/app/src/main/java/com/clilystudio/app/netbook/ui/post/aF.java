package com.clilystudio.app.netbook.ui.post;

import android.os.AsyncTask.Status;
import android.support.design.widget.am;
import android.view.View;
import com.handmark.pulltorefresh.library.j;

final class aF
  implements j
{
  aF(BookReviewListFragment paramBookReviewListFragment)
  {
  }

  public final void a()
  {
    if ((BookReviewListFragment.b(this.a) == null) || (BookReviewListFragment.b(this.a).getStatus() == AsyncTask.Status.FINISHED))
    {
      this.a.c.setVisibility(0);
      if (!am_CommonUtils.1BookReviewListFragment.j(this.a)))
        BookReviewListFragment.j(this.a).cancel(true);
      BookReviewListFragment.a(this.a, new aH(this.a, (byte)0));
      aH localaH = BookReviewListFragment.b(this.a);
      String[] arrayOfString = new String[2];
      arrayOfString[0] = this.a.a();
      arrayOfString[1] = this.a.f;
      localaH.b(arrayOfString);
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.aF
 * JD-Core Version:    0.6.2
 */