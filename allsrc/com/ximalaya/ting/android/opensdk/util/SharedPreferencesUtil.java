package com.ximalaya.ting.android.opensdk.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

public class SharedPreferencesUtil
{
  private static SharedPreferencesUtil instance;
  private SharedPreferences settings;

  private SharedPreferencesUtil(Context paramContext)
  {
    this.settings = paramContext.getSharedPreferences("ting_data", 4);
  }

  @SuppressLint({"NewApi"})
  public static void apply(SharedPreferences.Editor paramEditor)
  {
    if (Build.VERSION.SDK_INT >= 9)
    {
      paramEditor.apply();
      return;
    }
    paramEditor.commit();
  }

  public static SharedPreferencesUtil getInstance(Context paramContext)
  {
    if (instance == null)
      instance = new SharedPreferencesUtil(paramContext.getApplicationContext());
    return instance;
  }

  public boolean contains(String paramString)
  {
    return this.settings.contains(paramString);
  }

  public ArrayList<String> getArrayList(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    String str = this.settings.getString(paramString, "{}");
    while (true)
    {
      JSONArray localJSONArray;
      int i;
      try
      {
        localJSONArray = new JSONArray(str);
        i = 0;
        if (i >= localJSONArray.length())
          return localArrayList;
      }
      catch (Exception localException)
      {
        return localArrayList;
      }
      localArrayList.add(localJSONArray.optString(i));
      i++;
    }
  }

  public boolean getBoolean(String paramString)
  {
    return this.settings.getBoolean(paramString, false);
  }

  public boolean getBoolean(String paramString, boolean paramBoolean)
  {
    return this.settings.getBoolean(paramString, paramBoolean);
  }

  public Double getDouble(String paramString)
  {
    String str = this.settings.getString(paramString, null);
    Object localObject = null;
    if (str != null);
    try
    {
      Double localDouble = Double.valueOf(Double.parseDouble(str));
      localObject = localDouble;
      return localObject;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public HashMap<String, String> getHashMapByKey(String paramString)
  {
    HashMap localHashMap = new HashMap();
    String str1 = this.settings.getString(paramString, "{}");
    while (true)
    {
      JSONObject localJSONObject;
      Iterator localIterator;
      try
      {
        localJSONObject = new JSONObject(str1);
        localIterator = localJSONObject.keys();
        if (!localIterator.hasNext())
          return localHashMap;
      }
      catch (Exception localException)
      {
        return localHashMap;
      }
      String str2 = (String)localIterator.next();
      localHashMap.put(str2, localJSONObject.optString(str2));
    }
  }

  public int getInt(String paramString, int paramInt)
  {
    return this.settings.getInt(paramString, paramInt);
  }

  public long getLong(String paramString)
  {
    return this.settings.getLong(paramString, -1L);
  }

  public Boolean getOptBoolean(String paramString)
  {
    String str = this.settings.getString(paramString, null);
    try
    {
      Boolean localBoolean = Boolean.valueOf(Boolean.parseBoolean(str));
      return localBoolean;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public Double getOptDouble(String paramString)
  {
    String str = this.settings.getString(paramString, null);
    try
    {
      Double localDouble = Double.valueOf(Double.parseDouble(str));
      return localDouble;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public String getString(String paramString)
  {
    return this.settings.getString(paramString, "");
  }

  public void removeByKey(String paramString)
  {
    apply(this.settings.edit().remove(paramString));
  }

  public void saveArrayList(String paramString, ArrayList<String> paramArrayList)
  {
    apply(this.settings.edit().putString(paramString, new Gson().toJson(paramArrayList)));
  }

  public void saveBoolean(String paramString, boolean paramBoolean)
  {
    apply(this.settings.edit().putBoolean(paramString, paramBoolean));
  }

  public void saveHashMap(String paramString, HashMap<String, String> paramHashMap)
  {
    JSONObject localJSONObject = new JSONObject(paramHashMap);
    apply(this.settings.edit().putString(paramString, localJSONObject.toString()));
  }

  public void saveInt(String paramString, int paramInt)
  {
    apply(this.settings.edit().putInt(paramString, paramInt));
  }

  public void saveLong(String paramString, long paramLong)
  {
    apply(this.settings.edit().putLong(paramString, paramLong));
  }

  public void saveString(String paramString1, String paramString2)
  {
    apply(this.settings.edit().putString(paramString1, paramString2));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.util.SharedPreferencesUtil
 * JD-Core Version:    0.6.0
 */