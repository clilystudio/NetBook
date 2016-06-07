package com.ximalaya.ting.android.opensdk.util;

import java.util.Map;

public class HttpUrlUtil$Config
{
  public static Config DEFAULT;
  public static final String METHOD_GET = "GET";
  public static final String METHOD_POST = "POST";
  public String authorization;
  public int connectionTimeOut = 5000;
  public String method = "GET";
  public Map<String, String> property;
  public String proxyHost;
  public int proxyPort;
  public int readTimeOut = 5000;
  public boolean useCache = true;
  public boolean useProxy = false;

  static
  {
    Config localConfig = new Config();
    DEFAULT = localConfig;
    localConfig.connectionTimeOut = 10000;
    DEFAULT.readTimeOut = 10000;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.util.HttpUrlUtil.Config
 * JD-Core Version:    0.6.0
 */