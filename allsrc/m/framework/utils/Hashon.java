package m.framework.utils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

public class Hashon
{
  private ArrayList<?> arrayToList(Object paramObject)
  {
    int i = 0;
    ArrayList localArrayList;
    byte[] arrayOfByte;
    if ((paramObject instanceof byte[]))
    {
      localArrayList = new ArrayList();
      arrayOfByte = (byte[])paramObject;
      int j = arrayOfByte.length;
      if (i < j);
    }
    while (true)
    {
      return localArrayList;
      localArrayList.add(Byte.valueOf(arrayOfByte[i]));
      i++;
      break;
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
        continue;
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
        continue;
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
        continue;
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
        continue;
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
        continue;
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
        continue;
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
        continue;
      }
      if (!(paramObject instanceof String[]))
        break label451;
      localArrayList = new ArrayList();
      String[] arrayOfString = (String[])paramObject;
      int i5 = arrayOfString.length;
      while (i < i5)
      {
        localArrayList.add(arrayOfString[i]);
        i++;
      }
    }
    label451: return null;
  }

  private String format(String paramString, ArrayList<Object> paramArrayList)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("[\n");
    String str = paramString + "\t";
    Iterator localIterator = paramArrayList.iterator();
    int i = 0;
    if (!localIterator.hasNext())
    {
      localStringBuffer.append('\n').append(paramString).append(']');
      return localStringBuffer.toString();
    }
    Object localObject = localIterator.next();
    if (i > 0)
      localStringBuffer.append(",\n");
    localStringBuffer.append(str);
    if ((localObject instanceof HashMap))
      localStringBuffer.append(format(str, (HashMap)localObject));
    while (true)
    {
      i++;
      break;
      if ((localObject instanceof ArrayList))
      {
        localStringBuffer.append(format(str, (ArrayList)localObject));
        continue;
      }
      if ((localObject instanceof String))
      {
        localStringBuffer.append('"').append(localObject).append('"');
        continue;
      }
      localStringBuffer.append(localObject);
    }
  }

  private String format(String paramString, HashMap<String, Object> paramHashMap)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("{\n");
    String str = paramString + "\t";
    Iterator localIterator = paramHashMap.entrySet().iterator();
    int i = 0;
    if (!localIterator.hasNext())
    {
      localStringBuffer.append('\n').append(paramString).append('}');
      return localStringBuffer.toString();
    }
    Map.Entry localEntry = (Map.Entry)localIterator.next();
    if (i > 0)
      localStringBuffer.append(",\n");
    localStringBuffer.append(str).append('"').append((String)localEntry.getKey()).append("\":");
    Object localObject = localEntry.getValue();
    if ((localObject instanceof HashMap))
      localStringBuffer.append(format(str, (HashMap)localObject));
    while (true)
    {
      i++;
      break;
      if ((localObject instanceof ArrayList))
      {
        localStringBuffer.append(format(str, (ArrayList)localObject));
        continue;
      }
      if ((localObject instanceof String))
      {
        localStringBuffer.append('"').append(localObject).append('"');
        continue;
      }
      localStringBuffer.append(localObject);
    }
  }

  private ArrayList<Object> fromJson(JSONArray paramJSONArray)
  {
    ArrayList localArrayList = new ArrayList();
    int i = paramJSONArray.length();
    int j = 0;
    if (j >= i)
      return localArrayList;
    Object localObject = paramJSONArray.opt(j);
    if ((localObject instanceof JSONObject))
      localObject = fromJson((JSONObject)localObject);
    while (true)
    {
      localArrayList.add(localObject);
      j++;
      break;
      if (!(localObject instanceof JSONArray))
        continue;
      localObject = fromJson((JSONArray)localObject);
    }
  }

  private HashMap<String, Object> fromJson(JSONObject paramJSONObject)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramJSONObject.keys();
    String str;
    Object localObject;
    do
    {
      if (!localIterator.hasNext())
        return localHashMap;
      str = (String)localIterator.next();
      localObject = paramJSONObject.opt(str);
      if (!JSONObject.NULL.equals(localObject))
        continue;
      localObject = null;
    }
    while (localObject == null);
    if ((localObject instanceof JSONObject))
      localObject = fromJson((JSONObject)localObject);
    while (true)
    {
      localHashMap.put(str, localObject);
      break;
      if (!(localObject instanceof JSONArray))
        continue;
      localObject = fromJson((JSONArray)localObject);
    }
  }

  private JSONArray getJSONArray(ArrayList<Object> paramArrayList)
  {
    JSONArray localJSONArray = new JSONArray();
    Iterator localIterator = paramArrayList.iterator();
    if (!localIterator.hasNext())
      return localJSONArray;
    Object localObject = localIterator.next();
    if ((localObject instanceof HashMap))
      localObject = getJSONObject((HashMap)localObject);
    while (true)
    {
      localJSONArray.put(localObject);
      break;
      if (!(localObject instanceof ArrayList))
        continue;
      localObject = getJSONArray((ArrayList)localObject);
    }
  }

  private JSONObject getJSONObject(HashMap<String, Object> paramHashMap)
  {
    JSONObject localJSONObject = new JSONObject();
    Iterator localIterator = paramHashMap.entrySet().iterator();
    if (!localIterator.hasNext())
      return localJSONObject;
    Map.Entry localEntry = (Map.Entry)localIterator.next();
    Object localObject1 = localEntry.getValue();
    Object localObject2;
    if ((localObject1 instanceof HashMap))
      localObject2 = getJSONObject((HashMap)localObject1);
    while (true)
    {
      localJSONObject.put((String)localEntry.getKey(), localObject2);
      break;
      if ((localObject1 instanceof ArrayList))
      {
        localObject2 = getJSONArray((ArrayList)localObject1);
        continue;
      }
      if (isBasicArray(localObject1))
      {
        localObject2 = getJSONArray(arrayToList(localObject1));
        continue;
      }
      localObject2 = localObject1;
    }
  }

  private boolean isBasicArray(Object paramObject)
  {
    return ((paramObject instanceof byte[])) || ((paramObject instanceof short[])) || ((paramObject instanceof int[])) || ((paramObject instanceof long[])) || ((paramObject instanceof float[])) || ((paramObject instanceof double[])) || ((paramObject instanceof char[])) || ((paramObject instanceof boolean[])) || ((paramObject instanceof String[]));
  }

  public String format(String paramString)
  {
    try
    {
      String str = format("", fromJson(paramString));
      return str;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return "";
  }

  public String fromHashMap(HashMap<String, Object> paramHashMap)
  {
    try
    {
      String str = getJSONObject(paramHashMap).toString();
      return str;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return "";
  }

  public HashMap<String, Object> fromJson(String paramString)
  {
    try
    {
      if ((paramString.startsWith("[")) && (paramString.endsWith("]")))
        paramString = "{\"fakelist\":" + paramString + "}";
      HashMap localHashMap = fromJson(new JSONObject(paramString));
      return localHashMap;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return new HashMap();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.utils.Hashon
 * JD-Core Version:    0.6.0
 */