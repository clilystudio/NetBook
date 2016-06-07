package com.iflytek.cloud.util;

import android.text.TextUtils;
import com.iflytek.cloud.a.b.a.a;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class UserWords
{
  private Hashtable<String, ArrayList<String>> a = null;

  public UserWords()
  {
  }

  public UserWords(String paramString)
  {
    a(paramString);
  }

  private String a()
  {
    JSONObject localJSONObject1;
    JSONArray localJSONArray1;
    while (true)
    {
      Map.Entry localEntry;
      JSONObject localJSONObject2;
      JSONArray localJSONArray2;
      try
      {
        if (this.a != null)
          continue;
        a.a("mwords is null...");
        return null;
        localJSONObject1 = new JSONObject();
        localJSONArray1 = new JSONArray();
        Iterator localIterator1 = this.a.entrySet().iterator();
        if (!localIterator1.hasNext())
          break;
        localEntry = (Map.Entry)localIterator1.next();
        localJSONObject2 = new JSONObject();
        localJSONArray2 = new JSONArray();
        Iterator localIterator2 = ((ArrayList)localEntry.getValue()).iterator();
        if (localIterator2.hasNext())
        {
          localJSONArray2.put((String)localIterator2.next());
          continue;
        }
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
        return null;
      }
      localJSONObject2.put("words", localJSONArray2);
      localJSONObject2.put("name", localEntry.getKey());
      localJSONArray1.put(localJSONObject2);
    }
    localJSONObject1.put("userword", localJSONArray1);
    String str = localJSONObject1.toString();
    return str;
  }

  private void a(String paramString)
  {
    while (true)
    {
      int j;
      try
      {
        if (!TextUtils.isEmpty(paramString))
          continue;
        a.a("userword is null...");
        return;
        JSONArray localJSONArray1 = new JSONObject(new JSONTokener(paramString)).getJSONArray("userword");
        int i = 0;
        if (i < localJSONArray1.length())
        {
          JSONObject localJSONObject = (JSONObject)localJSONArray1.get(i);
          JSONArray localJSONArray2 = localJSONObject.getJSONArray("words");
          ArrayList localArrayList = new ArrayList();
          j = 0;
          if (j >= localJSONArray2.length())
            continue;
          String str = localJSONArray2.get(j).toString();
          if (localArrayList.contains(str))
            break label153;
          localArrayList.add(str);
          break label153;
          this.a.put(localJSONObject.get("name").toString(), localArrayList);
          i++;
          continue;
        }
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
      }
      return;
      label153: j++;
    }
  }

  private boolean a(ArrayList<String> paramArrayList, String paramString)
  {
    if ((paramArrayList != null) && (!paramArrayList.contains(paramString)))
    {
      paramArrayList.add(paramString);
      return true;
    }
    return false;
  }

  private boolean a(ArrayList<String> paramArrayList1, ArrayList<String> paramArrayList2)
  {
    if ((paramArrayList1 == null) || (paramArrayList2 == null))
      return false;
    Iterator localIterator = paramArrayList2.iterator();
    while (localIterator.hasNext())
      a(paramArrayList1, (String)localIterator.next());
    return true;
  }

  public ArrayList<String> getKeys()
  {
    ArrayList localArrayList;
    if ((this.a == null) || (this.a.isEmpty()))
      localArrayList = null;
    while (true)
    {
      return localArrayList;
      localArrayList = new ArrayList();
      Iterator localIterator = this.a.keySet().iterator();
      while (localIterator.hasNext())
        localArrayList.add(localIterator.next());
    }
  }

  public ArrayList<String> getWords()
  {
    return getWords("default");
  }

  public ArrayList<String> getWords(String paramString)
  {
    return (ArrayList)this.a.get(paramString);
  }

  public boolean hasKey(String paramString)
  {
    return this.a.containsKey(paramString);
  }

  public boolean putWord(String paramString)
  {
    return putWord("default", paramString);
  }

  public boolean putWord(String paramString1, String paramString2)
  {
    if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2)))
      return false;
    ArrayList localArrayList1 = getWords(paramString1);
    if (localArrayList1 != null)
      a(localArrayList1, paramString2);
    while (true)
    {
      return true;
      ArrayList localArrayList2 = new ArrayList();
      a(localArrayList2, paramString2);
      this.a.put(paramString1, localArrayList2);
    }
  }

  public boolean putWords(String paramString, ArrayList<String> paramArrayList)
  {
    if ((TextUtils.isEmpty(paramString)) || (paramArrayList == null))
      return false;
    ArrayList localArrayList1 = getWords(paramString);
    if (localArrayList1 != null)
      a(localArrayList1, paramArrayList);
    while (true)
    {
      return true;
      ArrayList localArrayList2 = new ArrayList();
      a(localArrayList2, paramArrayList);
      this.a.put(paramString, localArrayList2);
    }
  }

  public boolean putWords(ArrayList<String> paramArrayList)
  {
    return putWords("default", paramArrayList);
  }

  public String toString()
  {
    return a();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.cloud.util.UserWords
 * JD-Core Version:    0.6.0
 */