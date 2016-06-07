package com.clilystudio.netbook.ui;

import android.os.AsyncTask.Status;
import android.view.View;
import com.handmark.pulltorefresh.library.j;

final class ap
  implements j
{
  ap(BookCategoryFragment paramBookCategoryFragment)
  {
  }

  public final void a()
  {
    if ((BookCategoryFragment.d(this.a) == null) || (BookCategoryFragment.d(this.a).getStatus() == AsyncTask.Status.FINISHED))
    {
      BookCategoryFragment.f(this.a).setVisibility(0);
      BookCategoryFragment.a(this.a, new aq(this.a));
      BookCategoryFragment.d(this.a).b(new String[0]);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.ap
 * JD-Core Version:    0.6.0
 */