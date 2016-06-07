package com.clilystudio.netbook;

import android.text.TextUtils;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.event.H;
import com.clilystudio.netbook.event.i;

final class f
  implements com.umeng.a.a.a
{
  f(MyApplication paramMyApplication)
  {
  }

  public final void a()
  {
    String str = com.umeng.a.b.b(this.a, "set_default_api");
    if (!TextUtils.isEmpty(str))
      ApiService.a(str);
    ApiService.j(com.umeng.a.b.b(this.a, "reader_web_url"), 4);
    i.a().c(new H(com.arcsoft.hpay100.a.a.x(this.a)));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.f
 * JD-Core Version:    0.6.0
 */