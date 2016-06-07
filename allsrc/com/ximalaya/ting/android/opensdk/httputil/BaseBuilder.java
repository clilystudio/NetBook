package com.ximalaya.ting.android.opensdk.httputil;

import android.text.TextUtils;
import com.squareup.okhttp.D;
import com.squareup.okhttp.E;
import com.squareup.okhttp.internal.l;
import com.squareup.okhttp.s;
import com.ximalaya.ting.android.opensdk.httputil.util.SignatureUtil;
import com.ximalaya.ting.android.opensdk.httputil.util.Util;
import java.io.File;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class BaseBuilder
{
  public static D addCommonCookie(D paramD)
  {
    paramD.a("Connection", "close");
    return paramD;
  }

  public static D urlGet(String paramString)
  {
    return urlGet(paramString, null);
  }

  public static D urlGet(String paramString, Map<String, String> paramMap)
  {
    if (paramMap != null)
      paramString = paramString + "?" + Util.ConvertMap2HttpParams(Util.encoderName(paramMap, "q"));
    return addCommonCookie(new D().a(paramString));
  }

  public static D urlGet(String paramString1, Map<String, String> paramMap, String paramString2)
  {
    String str = SignatureUtil.generateSignature(paramString2, paramMap);
    if (TextUtils.isEmpty(str))
      throw new XimalayaException(601, "exception occurs when caculate signature");
    paramMap.put("sig", str);
    return urlGet(paramString1, paramMap);
  }

  public static D urlPost(String paramString, File paramFile)
  {
    return addCommonCookie(new D().a(paramString).a(E.a(null, paramFile)));
  }

  public static D urlPost(String paramString1, String paramString2)
  {
    return addCommonCookie(new D().a(paramString1).a(E.a(null, paramString2.getBytes(l.c))));
  }

  public static D urlPost(String paramString, Map<String, String> paramMap)
  {
    if ((paramMap != null) && (paramMap.size() > 0))
    {
      s locals = new s();
      Iterator localIterator = paramMap.entrySet().iterator();
      while (true)
      {
        if (!localIterator.hasNext())
          return addCommonCookie(new D().a(paramString).a(locals.a()));
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        locals.a((String)localEntry.getKey(), (String)localEntry.getValue());
      }
    }
    throw new XimalayaException(602, "Form encoded body must have at least one part");
  }

  public static D urlPost(String paramString1, Map<String, String> paramMap, String paramString2)
  {
    String str = SignatureUtil.generateSignature(paramString2, paramMap);
    if (TextUtils.isEmpty(str))
      throw new XimalayaException(601, "exception occurs when caculate signature");
    paramMap.put("sig", str);
    return urlPost(paramString1, paramMap);
  }

  public static D urlPost(String paramString, byte[] paramArrayOfByte)
  {
    return addCommonCookie(new D().a(paramString).a(E.a(null, paramArrayOfByte)));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.httputil.BaseBuilder
 * JD-Core Version:    0.6.0
 */