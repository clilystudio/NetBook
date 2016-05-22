package com.clilystudio.app.netbook.util;

import android.support.design.widget.am;
import com.squareup.a.b;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.event.i;
import com.clilystudio.app.netbook.event.w;
import com.clilystudio.app.netbook.model.Root;

final class L extends S<Root>
{
  L(J paramJ)
  {
  }

  protected final Root a(ApiService paramApiService, String[] paramArrayOfString)
  {
    return paramApiService.L(paramArrayOfString[0]);
  }

  protected final void b(Root paramRoot)
  {
    this.a.a(0);
    i.a().c(new w());
    am.j(J.a(this.a));
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.util.L
 * JD-Core Version:    0.6.2
 */