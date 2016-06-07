package com.ushaqi.zhuishushenqi.util;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class H
{
  private static H a;
  private Map<Character, Character> b;

  private H(Context paramContext)
  {
    List localList = a(paramContext, "ts.tab", "UTF-8");
    if (localList.size() % 2 != 0)
      throw new RuntimeException("The conversion table may be damaged or not exists");
    this.b = new HashMap();
    for (int i = 0; i < localList.size(); i += 2)
      this.b.put(localList.get(i + 1), localList.get(i));
  }

  public static H a(Context paramContext)
  {
    if (a == null)
      a = new H(paramContext);
    return a;
  }

  private static List<Character> a(Context paramContext, String paramString1, String paramString2)
  {
    ArrayList localArrayList = new ArrayList();
    BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(paramContext.getResources().getAssets().open(paramString1), paramString2));
    while (true)
    {
      int i = localBufferedReader.read();
      if (i == -1)
        break;
      localArrayList.add(Character.valueOf((char)i));
    }
    localBufferedReader.close();
    return localArrayList;
  }

  public final Character a(char paramChar)
  {
    if (this.b.get(Character.valueOf(paramChar)) == null)
      return Character.valueOf(paramChar);
    return (Character)this.b.get(Character.valueOf(paramChar));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.util.H
 * JD-Core Version:    0.6.0
 */