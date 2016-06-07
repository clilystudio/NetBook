package com.ximalaya.ting.android.opensdk.httputil;

import com.squareup.okhttp.A;
import com.squareup.okhttp.C;
import com.squareup.okhttp.I;
import com.squareup.okhttp.f;

public class BaseCall
{
  private static A mOkHttpClient = new A();

  public static void doAsync(A paramA, C paramC, IHttpCallBack paramIHttpCallBack)
  {
    paramA.a(paramC).a(new BaseCall.1(paramIHttpCallBack));
  }

  public static void doAsync(C paramC, IHttpCallBack paramIHttpCallBack)
  {
    getOkHttpClient().a(paramC).a(new BaseCall.2(paramIHttpCallBack));
  }

  public static I doSync(A paramA, C paramC)
  {
    return paramA.a(paramC).a();
  }

  public static I doSync(C paramC)
  {
    return getOkHttpClient().a(paramC).a();
  }

  public static A getOkHttpClient()
  {
    return mOkHttpClient;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.httputil.BaseCall
 * JD-Core Version:    0.6.0
 */