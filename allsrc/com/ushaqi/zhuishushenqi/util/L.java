package com.ushaqi.zhuishushenqi.util;

import android.support.design.widget.am;
import com.squareup.a.b;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.event.i;
import com.ushaqi.zhuishushenqi.event.w;
import com.ushaqi.zhuishushenqi.model.Root;

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
 * Qualified Name:     com.ushaqi.zhuishushenqi.util.L
 * JD-Core Version:    0.6.0
 */