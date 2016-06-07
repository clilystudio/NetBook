package com.mob.tools.b;

import android.text.TextUtils;
import com.mob.tools.log.d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

public final class e
{
  private static ArrayList<?> a(Object paramObject)
  {
    int i = 0;
    if ((paramObject instanceof byte[]))
    {
      localArrayList = new ArrayList();
      byte[] arrayOfByte = (byte[])paramObject;
      int j = arrayOfByte.length;
      while (i < j)
      {
        localArrayList.add(Byte.valueOf(arrayOfByte[i]));
        i++;
      }
    }
    if ((paramObject instanceof short[]))
    {
      localArrayList = new ArrayList();
      short[] arrayOfShort = (short[])paramObject;
      int k = arrayOfShort.length;
      while (i < k)
      {
        localArrayList.add(Short.valueOf(arrayOfShort[i]));
        i++;
      }
    }
    if ((paramObject instanceof int[]))
    {
      localArrayList = new ArrayList();
      int[] arrayOfInt = (int[])paramObject;
      int m = arrayOfInt.length;
      while (i < m)
      {
        localArrayList.add(Integer.valueOf(arrayOfInt[i]));
        i++;
      }
    }
    if ((paramObject instanceof long[]))
    {
      localArrayList = new ArrayList();
      long[] arrayOfLong = (long[])paramObject;
      int n = arrayOfLong.length;
      while (i < n)
      {
        localArrayList.add(Long.valueOf(arrayOfLong[i]));
        i++;
      }
    }
    if ((paramObject instanceof float[]))
    {
      localArrayList = new ArrayList();
      float[] arrayOfFloat = (float[])paramObject;
      int i1 = arrayOfFloat.length;
      while (i < i1)
      {
        localArrayList.add(Float.valueOf(arrayOfFloat[i]));
        i++;
      }
    }
    if ((paramObject instanceof double[]))
    {
      localArrayList = new ArrayList();
      double[] arrayOfDouble = (double[])paramObject;
      int i2 = arrayOfDouble.length;
      while (i < i2)
      {
        localArrayList.add(Double.valueOf(arrayOfDouble[i]));
        i++;
      }
    }
    if ((paramObject instanceof char[]))
    {
      localArrayList = new ArrayList();
      char[] arrayOfChar = (char[])paramObject;
      int i3 = arrayOfChar.length;
      while (i < i3)
      {
        localArrayList.add(Character.valueOf(arrayOfChar[i]));
        i++;
      }
    }
    if ((paramObject instanceof boolean[]))
    {
      localArrayList = new ArrayList();
      boolean[] arrayOfBoolean = (boolean[])paramObject;
      int i4 = arrayOfBoolean.length;
      while (i < i4)
      {
        localArrayList.add(Boolean.valueOf(arrayOfBoolean[i]));
        i++;
      }
    }
    if ((paramObject instanceof String[]))
    {
      localArrayList = new ArrayList();
      String[] arrayOfString = (String[])paramObject;
      int i5 = arrayOfString.length;
      while (i < i5)
      {
        localArrayList.add(arrayOfString[i]);
        i++;
      }
    }
    ArrayList localArrayList = null;
    return localArrayList;
  }

  private ArrayList<Object> a(JSONArray paramJSONArray)
  {
    ArrayList localArrayList = new ArrayList();
    int i = paramJSONArray.length();
    int j = 0;
    if (j < i)
    {
      Object localObject = paramJSONArray.opt(j);
      if ((localObject instanceof JSONObject))
        localObject = a((JSONObject)localObject);
      while (true)
      {
        localArrayList.add(localObject);
        j++;
        break;
        if (!(localObject instanceof JSONArray))
          continue;
        localObject = a((JSONArray)localObject);
      }
    }
    return (ArrayList<Object>)localArrayList;
  }

  private HashMap<String, Object> a(JSONObject paramJSONObject)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramJSONObject.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject = paramJSONObject.opt(str);
      if (JSONObject.NULL.equals(localObject))
        localObject = null;
      if (localObject == null)
        continue;
      if ((localObject instanceof JSONObject))
        localObject = a((JSONObject)localObject);
      while (true)
      {
        localHashMap.put(str, localObject);
        break;
        if (!(localObject instanceof JSONArray))
          continue;
        localObject = a((JSONArray)localObject);
      }
    }
    return (HashMap<String, Object>)localHashMap;
  }

  private JSONArray a(ArrayList<Object> paramArrayList)
  {
    JSONArray localJSONArray = new JSONArray();
    Iterator localIterator = paramArrayList.iterator();
    if (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      if ((localObject instanceof HashMap))
        localObject = b((HashMap)localObject);
      while (true)
      {
        localJSONArray.put(localObject);
        break;
        if (!(localObject instanceof ArrayList))
          continue;
        localObject = a((ArrayList)localObject);
      }
    }
    return (JSONArray)localJSONArray;
  }

  private JSONObject b(HashMap<String, Object> paramHashMap)
  {
    JSONObject localJSONObject = new JSONObject();
    Iterator localIterator = paramHashMap.entrySet().iterator();
    if (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      Object localObject = localEntry.getValue();
      if ((localObject instanceof HashMap))
        localObject = b((HashMap)localObject);
      label206: 
      while (true)
      {
        localJSONObject.put((String)localEntry.getKey(), localObject);
        break;
        if ((localObject instanceof ArrayList))
        {
          localObject = a((ArrayList)localObject);
          continue;
        }
        if (((localObject instanceof byte[])) || ((localObject instanceof short[])) || ((localObject instanceof int[])) || ((localObject instanceof long[])) || ((localObject instanceof float[])) || ((localObject instanceof double[])) || ((localObject instanceof char[])) || ((localObject instanceof boolean[])) || ((localObject instanceof String[])));
        for (int i = 1; ; i = 0)
        {
          if (i == 0)
            break label206;
          localObject = a(a(localObject));
          break;
        }
      }
    }
    return (JSONObject)localJSONObject;
  }

  public final String a(HashMap<String, Object> paramHashMap)
  {
    try
    {
      String str = b(paramHashMap).toString();
      return str;
    }
    catch (Throwable localThrowable)
    {
      com.mob.tools.e.a().w(localThrowable);
    }
    return "";
  }

  public final HashMap<String, Object> a(String paramString)
  {
    if ((TextUtils.isEmpty(paramString)) || (!new f().a(paramString)))
      return new HashMap();
    try
    {
      if ((paramString.startsWith("[")) && (paramString.endsWith("]")))
        paramString = "{\"fakelist\":" + paramString + "}";
      HashMap localHashMap = a(new JSONObject(paramString));
      return localHashMap;
    }
    catch (Throwable localThrowable)
    {
      com.mob.tools.e.a().w(paramString, new Object[0]);
      com.mob.tools.e.a().w(localThrowable);
    }
    return new HashMap();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.b.e
 * JD-Core Version:    0.6.0
 */