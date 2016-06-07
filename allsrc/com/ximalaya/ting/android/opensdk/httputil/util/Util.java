package com.ximalaya.ting.android.opensdk.httputil.util;

import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONObject;

public class Util
{
  public static String ConvertMap2HttpParams(Map<String, String> paramMap)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    Iterator localIterator = paramMap.entrySet().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        localStringBuffer.deleteCharAt(-1 + localStringBuffer.length());
        return localStringBuffer.toString();
      }
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localStringBuffer.append((String)localEntry.getKey()).append("=").append((String)localEntry.getValue()).append("&");
    }
  }

  public static JSONObject HttpParameters2Json(Map<String, Object> paramMap)
  {
    return new JSONObject(paramMap);
  }

  public static Map<String, String> cType(Map<String, Object> paramMap)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramMap.entrySet().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return localHashMap;
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localHashMap.put((String)localEntry.getKey(), String.valueOf(localEntry.getValue()));
    }
  }

  public static Map<String, String> encoderName(Map<String, String> paramMap, String paramString)
  {
    Iterator localIterator = paramMap.entrySet().iterator();
    Map.Entry localEntry;
    do
    {
      if (!localIterator.hasNext())
        return paramMap;
      localEntry = (Map.Entry)localIterator.next();
    }
    while (!((String)localEntry.getKey()).equals(paramString));
    try
    {
      String str2 = URLEncoder.encode((String)localEntry.getValue(), "UTF-8");
      str1 = str2;
      paramMap.put(paramString, str1);
      return paramMap;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      while (true)
      {
        localUnsupportedEncodingException.printStackTrace();
        String str1 = null;
      }
    }
  }

  public static boolean isEmpty(String paramString)
  {
    return (!TextUtils.isEmpty(paramString)) && (!"null".equals(paramString));
  }

  public static String readInputStream(InputStream paramInputStream)
  {
    BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(paramInputStream));
    StringBuffer localStringBuffer = new StringBuffer();
    while (true)
    {
      String str = localBufferedReader.readLine();
      if (str == null)
        return localStringBuffer.toString();
      localStringBuffer.append(str.trim());
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.httputil.util.Util
 * JD-Core Version:    0.6.0
 */