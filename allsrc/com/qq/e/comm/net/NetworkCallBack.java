package com.qq.e.comm.net;

import com.qq.e.comm.net.rr.Request;
import com.qq.e.comm.net.rr.Response;

public abstract interface NetworkCallBack
{
  public abstract void onException(Exception paramException);

  public abstract void onResponse(Request paramRequest, Response paramResponse);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.comm.net.NetworkCallBack
 * JD-Core Version:    0.6.0
 */