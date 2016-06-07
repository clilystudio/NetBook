package com.alipay.android.phone.mrpc.core;

public class HttpException extends Exception
{
  public static final int NETWORK_AUTH_ERROR = 8;
  public static final int NETWORK_CONNECTION_EXCEPTION = 3;
  public static final int NETWORK_DNS_ERROR = 9;
  public static final int NETWORK_IO_EXCEPTION = 6;
  public static final int NETWORK_SCHEDULE_ERROR = 7;
  public static final int NETWORK_SERVER_EXCEPTION = 5;
  public static final int NETWORK_SOCKET_EXCEPTION = 4;
  public static final int NETWORK_SSL_EXCEPTION = 2;
  public static final int NETWORK_UNAVAILABLE = 1;
  public static final int NETWORK_UNKNOWN_ERROR = 0;
  private static final long serialVersionUID = -6320569206365033676L;
  private int mCode;
  private String mMsg;

  public HttpException(Integer paramInteger, String paramString)
  {
    super(localStringBuilder.toString());
    this.mCode = paramInteger.intValue();
    this.mMsg = paramString;
  }

  public HttpException(String paramString)
  {
    super(paramString);
    this.mCode = 0;
    this.mMsg = paramString;
  }

  public int getCode()
  {
    return this.mCode;
  }

  public String getMsg()
  {
    return this.mMsg;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.mrpc.core.HttpException
 * JD-Core Version:    0.6.0
 */