package com.alipay.tscenter.biz.rpc.vkeydfp.request;

import java.io.Serializable;
import java.util.Map;

public class DeviceDataReportRequest
  implements Serializable
{
  public String apdid;
  public Map<String, String> dataMap;
  public String lastTime;
  public String os;
  public String priApdid;
  public String pubApdid;
  public String token;
  public String umidToken;
  public String version;
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.tscenter.biz.rpc.vkeydfp.request.DeviceDataReportRequest
 * JD-Core Version:    0.6.0
 */