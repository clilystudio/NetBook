package com.iflytek.cloud.b;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public class a
{
  HashMap<String, String> a = new HashMap();

  public a()
  {
  }

  public a(String paramString, String[][] paramArrayOfString)
  {
    a(paramString);
    a(paramArrayOfString);
  }

  public void a()
  {
    this.a.clear();
  }

  public void a(String paramString)
  {
    this.a.clear();
    b(paramString);
  }

  public void a(String paramString1, String paramString2)
  {
    a(paramString1, paramString2, true);
  }

  public void a(String paramString1, String paramString2, boolean paramBoolean)
  {
    if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2)));
    do
      return;
    while ((!paramBoolean) && (this.a.containsKey(paramString1)));
    this.a.put(paramString1, paramString2);
  }

  public void a(String[][] paramArrayOfString)
  {
    if (paramArrayOfString == null);
    while (true)
    {
      return;
      for (int i = 0; i < paramArrayOfString.length; i++)
      {
        String[] arrayOfString = paramArrayOfString[i];
        if (!this.a.containsKey(arrayOfString[0]))
          continue;
        String str = (String)this.a.get(arrayOfString[0]);
        this.a.remove(arrayOfString[0]);
        for (int j = 1; j < arrayOfString.length; j++)
          this.a.put(arrayOfString[j], str);
      }
    }
  }

  public boolean a(String paramString, boolean paramBoolean)
  {
    String str = (String)this.a.get(paramString);
    if (str != null)
    {
      if ((!str.equals("true")) && (!str.equals("1")))
        break label38;
      paramBoolean = true;
    }
    label38: 
    do
      return paramBoolean;
    while ((!str.equals("false")) && (!str.equals("0")));
    return false;
  }

  public a b()
  {
    a locala = new a();
    locala.a = ((HashMap)this.a.clone());
    return locala;
  }

  public void b(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
      for (String str1 : paramString.split(","))
      {
        int k = str1.indexOf("=");
        if ((k <= 0) || (k >= str1.length()))
          continue;
        String str2 = str1.substring(0, k);
        String str3 = str1.substring(k + 1);
        this.a.put(str2, str3);
      }
  }

  public Boolean c(String paramString)
  {
    if (this.a.remove(paramString) != null);
    for (boolean bool = true; ; bool = false)
      return Boolean.valueOf(bool);
  }

  public HashMap<String, String> c()
  {
    return this.a;
  }

  public String d(String paramString)
  {
    return (String)this.a.get(paramString);
  }

  public boolean e(String paramString)
  {
    return this.a.containsKey(paramString);
  }

  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    Iterator localIterator = this.a.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localStringBuffer.append((String)localEntry.getKey());
      localStringBuffer.append("=");
      localStringBuffer.append((String)localEntry.getValue());
      localStringBuffer.append(",");
    }
    if (localStringBuffer.length() > 0)
      localStringBuffer.deleteCharAt(-1 + localStringBuffer.length());
    String str = localStringBuffer.toString();
    com.iflytek.cloud.a.b.a.a.c(str);
    return str;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.cloud.b.a
 * JD-Core Version:    0.6.0
 */