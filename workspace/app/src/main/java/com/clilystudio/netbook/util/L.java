package com.clilystudio.netbook.util;

import android.support.design.widget.am;
import com.squareup.a.b;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.w;
import com.clilystudio.netbook.model.Root;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.util.L
 * JD-Core Version:    0.6.0
 */