package com.alipay.b.a.a;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public final class a
{
  public static Map<String, String> a(String paramString)
  {
    HashMap localHashMap;
    try
    {
      JSONObject localJSONObject = new JSONObject(paramString);
      Iterator localIterator = localJSONObject.keys();
      localHashMap = new HashMap();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        localHashMap.put(str, (String)localJSONObject.get(str));
      }
    }
    catch (JSONException localJSONException)
    {
      return null;
    }
    return localHashMap;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.b.a.a.a
 * JD-Core Version:    0.6.0
 */