package com.integralblue.httpresponsecache.compat.java.net;

public enum ResponseSource
{
  static
  {
    ResponseSource[] arrayOfResponseSource = new ResponseSource[3];
    arrayOfResponseSource[0] = CACHE;
    arrayOfResponseSource[1] = CONDITIONAL_CACHE;
    arrayOfResponseSource[2] = NETWORK;
    a = arrayOfResponseSource;
  }

  public final boolean requiresConnection()
  {
    return (this == CONDITIONAL_CACHE) || (this == NETWORK);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.java.net.ResponseSource
 * JD-Core Version:    0.6.0
 */