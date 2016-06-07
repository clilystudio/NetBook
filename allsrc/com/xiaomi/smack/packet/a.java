package com.xiaomi.smack.packet;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class a
  implements g
{
  private String a;
  private String b;
  private String[] c = null;
  private String[] d = null;
  private String e;
  private List<a> f = null;

  public a(String paramString1, String paramString2, String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    this.a = paramString1;
    this.b = null;
    this.c = null;
    this.d = null;
  }

  public a(String paramString1, String paramString2, String[] paramArrayOfString1, String[] paramArrayOfString2, String paramString3, List<a> paramList)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramArrayOfString1;
    this.d = paramArrayOfString2;
    this.e = paramString3;
    this.f = paramList;
  }

  public static a a(Bundle paramBundle)
  {
    int i = 0;
    String str1 = paramBundle.getString("ext_ele_name");
    String str2 = paramBundle.getString("ext_ns");
    String str3 = paramBundle.getString("ext_text");
    Bundle localBundle = paramBundle.getBundle("attributes");
    Set localSet = localBundle.keySet();
    String[] arrayOfString1 = new String[localSet.size()];
    String[] arrayOfString2 = new String[localSet.size()];
    Iterator localIterator = localSet.iterator();
    for (int j = 0; localIterator.hasNext(); j++)
    {
      String str4 = (String)localIterator.next();
      arrayOfString1[j] = str4;
      arrayOfString2[j] = localBundle.getString(str4);
    }
    if (paramBundle.containsKey("children"))
    {
      Parcelable[] arrayOfParcelable = paramBundle.getParcelableArray("children");
      localArrayList = new ArrayList(arrayOfParcelable.length);
      int k = arrayOfParcelable.length;
      while (i < k)
      {
        localArrayList.add(a((Bundle)arrayOfParcelable[i]));
        i++;
      }
    }
    ArrayList localArrayList = null;
    return new a(str1, str2, arrayOfString1, arrayOfString2, str3, localArrayList);
  }

  private static Parcelable[] a(a[] paramArrayOfa)
  {
    if (paramArrayOfa == null)
      return null;
    Parcelable[] arrayOfParcelable = new Parcelable[paramArrayOfa.length];
    for (int i = 0; i < paramArrayOfa.length; i++)
      arrayOfParcelable[i] = paramArrayOfa[i].d();
    return arrayOfParcelable;
  }

  public final String a()
  {
    return this.a;
  }

  public final String a(String paramString)
  {
    if (this.c != null)
      for (int i = 0; i < this.c.length; i++)
        if (paramString.equals(this.c[i]))
          return this.d[i];
    return null;
  }

  public final String b()
  {
    if (!TextUtils.isEmpty(this.e))
      return com.xiaomi.smack.d.g.b(this.e);
    return this.e;
  }

  public final void b(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      this.e = com.xiaomi.smack.d.g.a(paramString);
      return;
    }
    this.e = paramString;
  }

  public final String c()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("<").append(this.a);
    if (!TextUtils.isEmpty(this.b))
      localStringBuilder.append(" xmlns=").append("\"").append(this.b).append("\"");
    if ((this.c != null) && (this.c.length > 0))
      for (int i = 0; i < this.c.length; i++)
      {
        if (TextUtils.isEmpty(this.d[i]))
          continue;
        localStringBuilder.append(" ").append(this.c[i]).append("=\"").append(com.xiaomi.smack.d.g.a(this.d[i])).append("\"");
      }
    if (!TextUtils.isEmpty(this.e))
      localStringBuilder.append(">").append(this.e).append("</").append(this.a).append(">");
    while (true)
    {
      return localStringBuilder.toString();
      if ((this.f != null) && (this.f.size() > 0))
      {
        localStringBuilder.append(">");
        Iterator localIterator = this.f.iterator();
        while (localIterator.hasNext())
          localStringBuilder.append(((a)localIterator.next()).c());
        localStringBuilder.append("</").append(this.a).append(">");
        continue;
      }
      localStringBuilder.append("/>");
    }
  }

  public final Bundle d()
  {
    Bundle localBundle1 = new Bundle();
    localBundle1.putString("ext_ele_name", this.a);
    localBundle1.putString("ext_ns", this.b);
    localBundle1.putString("ext_text", this.e);
    Bundle localBundle2 = new Bundle();
    if ((this.c != null) && (this.c.length > 0))
      for (int i = 0; i < this.c.length; i++)
        localBundle2.putString(this.c[i], this.d[i]);
    localBundle1.putBundle("attributes", localBundle2);
    if ((this.f != null) && (this.f.size() > 0))
    {
      List localList = this.f;
      localBundle1.putParcelableArray("children", a((a[])localList.toArray(new a[localList.size()])));
    }
    return localBundle1;
  }

  public final String toString()
  {
    return c();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.smack.packet.a
 * JD-Core Version:    0.6.0
 */