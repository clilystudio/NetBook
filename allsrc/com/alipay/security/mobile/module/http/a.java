package com.alipay.security.mobile.module.http;

import com.alipay.tscenter.biz.rpc.vkeydfp.request.DeviceDataReportRequest;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.AppListResult;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.DeviceDataReportResult;

public abstract interface a
{
  public abstract AppListResult a(String paramString1, String paramString2, String paramString3, String paramString4);

  public abstract DeviceDataReportResult a(DeviceDataReportRequest paramDeviceDataReportRequest);

  public abstract boolean a(String paramString);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.security.mobile.module.http.a
 * JD-Core Version:    0.6.0
 */