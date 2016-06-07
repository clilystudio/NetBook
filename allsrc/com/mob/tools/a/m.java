package com.mob.tools.a;

import com.mob.tools.b.e;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.HashMap;

final class m
  implements h
{
  m(l paraml, HashMap paramHashMap)
  {
  }

  public final void a(d paramd)
  {
    int i = paramd.a();
    if ((i == 200) || (i == 201))
    {
      StringBuilder localStringBuilder1 = new StringBuilder();
      BufferedReader localBufferedReader1 = new BufferedReader(new InputStreamReader(paramd.b(), Charset.forName("utf-8")));
      for (String str1 = localBufferedReader1.readLine(); str1 != null; str1 = localBufferedReader1.readLine())
      {
        if (localStringBuilder1.length() > 0)
          localStringBuilder1.append('\n');
        localStringBuilder1.append(str1);
      }
      localBufferedReader1.close();
      this.a.put("resp", localStringBuilder1.toString());
      return;
    }
    StringBuilder localStringBuilder2 = new StringBuilder();
    BufferedReader localBufferedReader2 = new BufferedReader(new InputStreamReader(paramd.c(), Charset.forName("utf-8")));
    for (String str2 = localBufferedReader2.readLine(); str2 != null; str2 = localBufferedReader2.readLine())
    {
      if (localStringBuilder2.length() > 0)
        localStringBuilder2.append('\n');
      localStringBuilder2.append(str2);
    }
    localBufferedReader2.close();
    HashMap localHashMap = new HashMap();
    localHashMap.put("error", localStringBuilder2.toString());
    localHashMap.put("status", Integer.valueOf(i));
    throw new Throwable(new e().a(localHashMap));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.a.m
 * JD-Core Version:    0.6.0
 */