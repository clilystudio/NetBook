package com.alipay.b.a;

import android.support.design.widget.am;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.DeviceDataReportResult;

public final class f
{
  private boolean a = false;
  private String b;
  private String c;
  private String d;
  private String e;
  private boolean f;
  private String g;

  public f(DeviceDataReportResult paramDeviceDataReportResult)
  {
    this.f = bool;
    if (paramDeviceDataReportResult == null)
      return;
    this.e = paramDeviceDataReportResult.resultCode;
    this.a = paramDeviceDataReportResult.success;
    this.b = paramDeviceDataReportResult.apdid;
    this.c = paramDeviceDataReportResult.token;
    this.d = paramDeviceDataReportResult.currentTime;
    this.g = paramDeviceDataReportResult.appListVer;
    if ("1".equals(paramDeviceDataReportResult.bugTrackSwitch));
    while (true)
    {
      this.f = bool;
      return;
      bool = false;
    }
  }

  public final boolean a()
  {
    if (!am.a(this.b))
      return this.a;
    return false;
  }

  public final String b()
  {
    return this.b;
  }

  public final String c()
  {
    return this.c;
  }

  public final String d()
  {
    return this.d;
  }

  public final String e()
  {
    return this.e;
  }

  public final boolean f()
  {
    return this.f;
  }

  public final String g()
  {
    return this.g;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.b.a.f
 * JD-Core Version:    0.6.0
 */