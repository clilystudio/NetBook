package com.alipay.security.mobile.module.http;

import com.alipay.security.mobile.module.a.a;
import com.alipay.tscenter.biz.rpc.vkeydfp.request.DeviceDataReportRequest;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.DeviceDataReportResult;

final class c
  implements Runnable
{
  c(b paramb, DeviceDataReportRequest paramDeviceDataReportRequest)
  {
  }

  public final void run()
  {
    try
    {
      b.a(this.b.a.a());
      return;
    }
    catch (Throwable localThrowable)
    {
      b.a(new DeviceDataReportResult());
      b.a().success = false;
      b.a().resultCode = ("static data rpc upload error, " + a.b(localThrowable));
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.security.mobile.module.http.c
 * JD-Core Version:    0.6.0
 */