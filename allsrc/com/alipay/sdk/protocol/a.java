package com.alipay.sdk.protocol;

import android.text.TextUtils;
import org.json.JSONObject;

public enum a
{
  private String h;
  private String i;
  private String j;
  private JSONObject k;
  private String l;
  private String m;
  private String n;
  private boolean o;
  private boolean p;
  private boolean q;
  private String r;
  private String s;
  private String t;
  private JSONObject u;

  static
  {
    a[] arrayOfa = new a[7];
    arrayOfa[0] = a;
    arrayOfa[1] = b;
    arrayOfa[2] = c;
    arrayOfa[3] = d;
    arrayOfa[4] = e;
    arrayOfa[5] = f;
    arrayOfa[6] = g;
    v = arrayOfa;
  }

  private a(String paramString)
  {
    this.h = paramString;
  }

  public static a[] a(b paramb)
  {
    String str1;
    if (paramb != null)
    {
      str1 = paramb.a;
      if (TextUtils.isEmpty(str1))
        break label302;
    }
    label295: label302: for (String[] arrayOfString = str1.split(";"); ; arrayOfString = null)
    {
      if (arrayOfString == null)
      {
        a[] arrayOfa4 = new a[1];
        arrayOfa4[0] = c;
        return arrayOfa4;
      }
      a[] arrayOfa2 = new a[arrayOfString.length];
      int i1 = arrayOfString.length;
      int i2 = 0;
      int i3 = 0;
      String str2;
      a locala1;
      int i5;
      label91: a locala2;
      if (i2 < i1)
      {
        str2 = arrayOfString[i2];
        locala1 = c;
        a[] arrayOfa3 = values();
        int i4 = arrayOfa3.length;
        i5 = 0;
        if (i5 >= i4)
          break label295;
        locala2 = arrayOfa3[i5];
        if (!str2.startsWith(locala2.h));
      }
      while (true)
      {
        locala2.i = str2;
        if (TextUtils.isEmpty(paramb.b))
          paramb.b = com.alipay.sdk.a.a.a;
        locala2.j = paramb.b;
        locala2.k = paramb.a();
        locala2.l = paramb.c;
        locala2.m = paramb.d;
        locala2.n = paramb.e;
        locala2.o = paramb.f;
        locala2.p = paramb.g;
        locala2.q = paramb.h;
        locala2.r = paramb.i;
        locala2.s = paramb.j;
        locala2.t = paramb.k;
        locala2.u = paramb.l;
        arrayOfa2[i3] = locala2;
        int i6 = i3 + 1;
        i2++;
        i3 = i6;
        break;
        i5++;
        break label91;
        return arrayOfa2;
        a[] arrayOfa1 = new a[1];
        arrayOfa1[0] = c;
        return arrayOfa1;
        locala2 = locala1;
      }
    }
  }

  public final JSONObject a()
  {
    return this.u;
  }

  public final String b()
  {
    return this.t;
  }

  public final String c()
  {
    return this.r;
  }

  public final String d()
  {
    return this.s;
  }

  public final String e()
  {
    return this.i;
  }

  public final String f()
  {
    return this.j;
  }

  public final String g()
  {
    return this.m;
  }

  public final String h()
  {
    return this.n;
  }

  public final boolean i()
  {
    return this.o;
  }

  public final boolean j()
  {
    return this.p;
  }

  public final boolean k()
  {
    return this.q;
  }

  public final String l()
  {
    return this.l;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.protocol.a
 * JD-Core Version:    0.6.0
 */