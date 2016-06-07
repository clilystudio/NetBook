package com.ushaqi.zhuishushenqi;

import android.text.TextUtils;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.event.H;
import com.ushaqi.zhuishushenqi.event.i;

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
 * Qualified Name:     com.ushaqi.zhuishushenqi.f
 * JD-Core Version:    0.6.0
 */