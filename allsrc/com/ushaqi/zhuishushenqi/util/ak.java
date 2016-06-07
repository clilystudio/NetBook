package com.ushaqi.zhuishushenqi.util;

import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Set;

public final class ak
{
  private float a = 1.0F;
  private float b = 1.0F;

  private static int a(Set<Character> paramSet1, Set<Character> paramSet2)
  {
    LinkedHashSet localLinkedHashSet = new LinkedHashSet();
    localLinkedHashSet.addAll(paramSet1);
    localLinkedHashSet.removeAll(paramSet2);
    return localLinkedHashSet.size();
  }

  public final float a(String paramString1, String paramString2)
  {
    int i = 0;
    LinkedHashSet localLinkedHashSet1 = new LinkedHashSet();
    LinkedHashSet localLinkedHashSet2 = new LinkedHashSet();
    String str4;
    if ((paramString1 == null) && (paramString2 != null))
      str4 = paramString2.toUpperCase(Locale.US);
    while (i < str4.length())
    {
      localLinkedHashSet2.add(Character.valueOf(str4.charAt(i)));
      i++;
      continue;
      String str3;
      if ((paramString1 != null) && (paramString2 == null))
        str3 = paramString1.toUpperCase(Locale.US);
      while (i < str3.length())
      {
        localLinkedHashSet1.add(Character.valueOf(str3.charAt(i)));
        i++;
        continue;
        if ((paramString1 == null) || (paramString2 == null))
          break;
        String str1 = paramString1.toUpperCase(Locale.US);
        String str2 = paramString2.toUpperCase(Locale.US);
        int i2;
        for (int n = 0; ; n++)
        {
          int i1 = str2.length();
          i2 = 0;
          if (n >= i1)
            break;
          localLinkedHashSet2.add(Character.valueOf(str2.charAt(n)));
        }
        while (i2 < str1.length())
        {
          localLinkedHashSet1.add(Character.valueOf(str1.charAt(i2)));
          i2++;
        }
      }
    }
    LinkedHashSet localLinkedHashSet3 = new LinkedHashSet();
    if (localLinkedHashSet1.size() > localLinkedHashSet2.size())
    {
      localLinkedHashSet3.addAll(localLinkedHashSet1);
      localLinkedHashSet3.retainAll(localLinkedHashSet2);
    }
    while (true)
    {
      int j = localLinkedHashSet3.size();
      int k = a(localLinkedHashSet1, localLinkedHashSet2);
      int m = a(localLinkedHashSet2, localLinkedHashSet1);
      return j / (j + this.a * k + this.b * m);
      localLinkedHashSet3.addAll(localLinkedHashSet2);
      localLinkedHashSet3.retainAll(localLinkedHashSet1);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.util.ak
 * JD-Core Version:    0.6.0
 */