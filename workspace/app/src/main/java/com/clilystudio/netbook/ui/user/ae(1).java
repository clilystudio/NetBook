package com.clilystudio.netbook.ui.user;

import android.os.AsyncTask.Status;
import android.view.View;
import com.handmark.pulltorefresh.library.j;

final class ae
  implements j
{
  ae(PayVoucherFragment paramPayVoucherFragment)
  {
  }

  public final void a()
  {
    if ((PayVoucherFragment.c(this.a) == null) || (PayVoucherFragment.c(this.a).getStatus() == AsyncTask.Status.FINISHED))
    {
      PayVoucherFragment.f(this.a).setVisibility(0);
      PayVoucherFragment.a(this.a, new af(this.a));
      PayVoucherFragment.c(this.a).b(new String[0]);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.user.ae
 * JD-Core Version:    0.6.0
 */