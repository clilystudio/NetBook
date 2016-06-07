package com.ushaqi.zhuishushenqi.ui;

import android.os.AsyncTask.Status;

final class ao
  implements Runnable
{
  ao(an paraman)
  {
  }

  public final void run()
  {
    if ((BookCategoryFragment.d(this.a.a) != null) && (BookCategoryFragment.d(this.a.a).getStatus() != AsyncTask.Status.FINISHED) && (!BookCategoryFragment.d(this.a.a).isCancelled()))
      BookCategoryFragment.d(this.a.a).cancel(true);
    BookCategoryFragment.a(this.a.a, new aq(this.a.a, false));
    BookCategoryFragment.d(this.a.a).b(new String[0]);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.ao
 * JD-Core Version:    0.6.0
 */