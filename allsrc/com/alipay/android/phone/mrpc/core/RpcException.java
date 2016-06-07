package com.alipay.android.phone.mrpc.core;

public class RpcException extends RuntimeException
{
  private static final long serialVersionUID = -2875437994101380406L;
  private int mCode;
  private String mMsg;
  private String mOperationType;

  public RpcException(Integer paramInteger, String paramString)
  {
    super(a(paramInteger, paramString));
    this.mCode = paramInteger.intValue();
    this.mMsg = paramString;
  }

  public RpcException(Integer paramInteger, String paramString, Throwable paramThrowable)
  {
    super(a(paramInteger, paramString), paramThrowable);
    this.mCode = paramInteger.intValue();
    this.mMsg = paramString;
  }

  public RpcException(Integer paramInteger, Throwable paramThrowable)
  {
    super(paramThrowable);
    this.mCode = paramInteger.intValue();
  }

  public RpcException(String paramString)
  {
    super(paramString);
    this.mCode = 0;
    this.mMsg = paramString;
  }

  private static String a(Integer paramInteger, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("RPCException: ");
    if (paramInteger != null)
      localStringBuilder.append("[").append(paramInteger).append("]");
    localStringBuilder.append(" : ");
    if (paramString != null)
      localStringBuilder.append(paramString);
    return localStringBuilder.toString();
  }

  public int getCode()
  {
    return this.mCode;
  }

  public String getMsg()
  {
    return this.mMsg;
  }

  public String getOperationType()
  {
    return this.mOperationType;
  }

  public void setOperationType(String paramString)
  {
    this.mOperationType = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.mrpc.core.RpcException
 * JD-Core Version:    0.6.0
 */