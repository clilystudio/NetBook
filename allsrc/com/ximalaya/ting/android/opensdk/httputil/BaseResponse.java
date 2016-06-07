package com.ximalaya.ting.android.opensdk.httputil;

import com.google.gson.Gson;
import com.squareup.okhttp.I;
import com.squareup.okhttp.K;
import java.io.Reader;
import java.lang.reflect.Type;
import java.util.List;

public class BaseResponse
{
  private I mResponse;

  public BaseResponse(I paramI)
  {
    this.mResponse = paramI;
  }

  public void filterResponse()
  {
  }

  public List<String> getHeader(String paramString)
  {
    return this.mResponse.a(paramString);
  }

  public Object getResponseBodyReaderToObject(Type paramType)
  {
    Reader localReader = this.mResponse.g().e();
    return new Gson().fromJson(localReader, paramType);
  }

  public Object getResponseBodyStringToObject(Type paramType)
  {
    String str = this.mResponse.g().f();
    return new Gson().fromJson(str, paramType);
  }

  public Reader getResponseBodyToReader()
  {
    return this.mResponse.g().e();
  }

  public String getResponseBodyToString()
  {
    return this.mResponse.g().f();
  }

  public int getStatusCode()
  {
    return this.mResponse.c();
  }

  public String getStatusMessage()
  {
    return this.mResponse.d();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.httputil.BaseResponse
 * JD-Core Version:    0.6.0
 */