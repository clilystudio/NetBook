package com.squareup.okhttp;

import com.squareup.okhttp.internal.http.k;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;

public final class u
{
  private final String[] a;

  private u(v paramv)
  {
    this.a = ((String[])v.a(paramv).toArray(new String[v.a(paramv).size()]));
  }

  public final int a()
  {
    return this.a.length / 2;
  }

  public final String a(int paramInt)
  {
    int i = paramInt << 1;
    if ((i < 0) || (i >= this.a.length))
      return null;
    return this.a[i];
  }

  public final String a(String paramString)
  {
    String[] arrayOfString = this.a;
    for (int i = -2 + arrayOfString.length; i >= 0; i -= 2)
      if (paramString.equalsIgnoreCase(arrayOfString[i]))
        return arrayOfString[(i + 1)];
    return null;
  }

  public final v b()
  {
    v localv = new v();
    Collections.addAll(v.a(localv), this.a);
    return localv;
  }

  public final String b(int paramInt)
  {
    int i = 1 + (paramInt << 1);
    if ((i < 0) || (i >= this.a.length))
      return null;
    return this.a[i];
  }

  public final Date b(String paramString)
  {
    String str = a(paramString);
    if (str != null)
      return k.a(str);
    return null;
  }

  public final List<String> c(String paramString)
  {
    int i = this.a.length / 2;
    ArrayList localArrayList = null;
    for (int j = 0; j < i; j++)
    {
      if (!paramString.equalsIgnoreCase(a(j)))
        continue;
      if (localArrayList == null)
        localArrayList = new ArrayList(2);
      localArrayList.add(b(j));
    }
    if (localArrayList != null)
      return Collections.unmodifiableList(localArrayList);
    return Collections.emptyList();
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    int j = this.a.length / 2;
    while (i < j)
    {
      localStringBuilder.append(a(i)).append(": ").append(b(i)).append("\n");
      i++;
    }
    return localStringBuilder.toString();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.u
 * JD-Core Version:    0.6.0
 */