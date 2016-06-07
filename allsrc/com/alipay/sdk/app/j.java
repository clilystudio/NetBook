package com.alipay.sdk.app;

import android.webkit.SslErrorHandler;
import com.alipay.sdk.g.d;

final class j
  implements Runnable
{
  j(b paramb, SslErrorHandler paramSslErrorHandler)
  {
  }

  public final void run()
  {
    d.a(this.b.a, "安全警告", "由于您的设备缺少根证书，将无法校验该访问站点的安全性，可能存在风险，请选择是否继续？", "继续", new k(this), "退出", new l(this));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.app.j
 * JD-Core Version:    0.6.0
 */