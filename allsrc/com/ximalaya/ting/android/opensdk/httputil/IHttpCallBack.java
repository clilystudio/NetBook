package com.ximalaya.ting.android.opensdk.httputil;

import com.squareup.okhttp.I;

public abstract interface IHttpCallBack
{
  public abstract void onFailure(int paramInt, String paramString);

  public abstract void onResponse(I paramI);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.httputil.IHttpCallBack
 * JD-Core Version:    0.6.0
 */