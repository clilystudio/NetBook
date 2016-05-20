package com.clilystudio.app.netbook.ui.ugcbook;

import android.os.AsyncTask.Status;
import android.view.View;
import com.handmark.pulltorefresh.library.j;

final class a
  implements j
{
  a(AbsUGCListFragment paramAbsUGCListFragment)
  {
  }

  public final void a()
  {
    if ((this.a.h == null) || (this.a.h.getStatus() == AsyncTask.Status.FINISHED))
    {
      this.a.e.setVisibility(0);
      if ((this.a.g != null) && (this.a.g.getStatus() != AsyncTask.Status.FINISHED) && (!this.a.g.isCancelled()))
        this.a.g.cancel(true);
      this.a.h = new d(this.a, (byte)0);
      this.a.h.b(new String[0]);
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.a
 * JD-Core Version:    0.6.2
 */