package com.clilystudio.app.netbook.util.adutil;

import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.ui.SplashActivity;
import com.clilystudio.app.netbook.widget.AdContainerLayout;
import com.clilystudio.app.netbook.widget.f;
import uk.me.lewisdeane.ldialogs.h;

final class b
  implements f
{
  b(AdSplashImp paramAdSplashImp, AdContainerLayout paramAdContainerLayout)
  {
  }

  public final void a()
  {
    this.b.d();
    AdSplashImp.a(this.b).a();
    if (AdSplashImp.b(this.b))
    {
      h localh1 = new h(AdSplashImp.a(this.b));
      if (a.s(AdSplashImp.a(this.b)));
      for (String str = AdSplashImp.a(this.b).getString(2131034279); ; str = AdSplashImp.a(this.b).getString(2131034278))
      {
        h localh2 = localh1.a(false);
        localh2.e = str;
        localh2.d = "下载";
        localh2.b("取消", new e(this)).a("确定", new c(this)).b();
        return;
      }
    }
    AdSplashImp.a(this.b).d();
    AdSplashImp.c(this.b).a();
  }

  public final void b()
  {
    this.b.d();
    this.b.e();
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.util.adutil.b
 * JD-Core Version:    0.6.2
 */