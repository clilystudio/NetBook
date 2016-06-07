package com.ximalaya.ting.android.opensdk.httputil.util;

import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;

public class SignatureUtil
{
  public static String caculateSignature(String paramString, Map<String, String> paramMap)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    Iterator localIterator = paramMap.entrySet().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        localStringBuffer.deleteCharAt(-1 + localStringBuffer.length());
      try
      {
        String str = CrypterUtil.hmacSHA1ToStr(BASE64Encoder.encode(localStringBuffer.toString()), paramString);
        return str;
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        localStringBuffer.append((String)localEntry.getKey()).append("=").append((String)localEntry.getValue()).append("&");
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
    return null;
  }

  public static String generateSignature(String paramString, Map<String, String> paramMap)
  {
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.putAll(paramMap);
    return caculateSignature(paramString, localTreeMap);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.httputil.util.SignatureUtil
 * JD-Core Version:    0.6.0
 */