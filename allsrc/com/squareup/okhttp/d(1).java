package com.squareup.okhttp;

import android.support.design.widget.am;
import java.util.concurrent.TimeUnit;

public final class d
{
  private final boolean a;
  private final boolean b;
  private final int c;
  private final int d;
  private final boolean e;
  private final boolean f;
  private final boolean g;
  private final int h;
  private final int i;
  private final boolean j;
  private final boolean k;
  private String l;

  static
  {
    e locale1 = new e();
    locale1.a = true;
    locale1.a();
    e locale2 = new e();
    locale2.e = true;
    long l1 = TimeUnit.SECONDS.toSeconds(2147483647L);
    if (l1 > 2147483647L);
    for (int m = 2147483647; ; m = (int)l1)
    {
      locale2.c = m;
      locale2.a();
      return;
    }
  }

  private d(e parame)
  {
    this.a = parame.a;
    this.b = false;
    this.c = parame.b;
    this.d = -1;
    this.e = false;
    this.f = false;
    this.g = false;
    this.h = parame.c;
    this.i = parame.d;
    this.j = parame.e;
    this.k = false;
  }

  private d(boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, int paramInt3, int paramInt4, boolean paramBoolean6, boolean paramBoolean7, String paramString)
  {
    this.a = paramBoolean1;
    this.b = paramBoolean2;
    this.c = paramInt1;
    this.d = paramInt2;
    this.e = paramBoolean3;
    this.f = paramBoolean4;
    this.g = paramBoolean5;
    this.h = paramInt3;
    this.i = paramInt4;
    this.j = paramBoolean6;
    this.k = paramBoolean7;
    this.l = paramString;
  }

  public static d a(u paramu)
  {
    boolean bool1 = false;
    int m = -1;
    int n = -1;
    boolean bool2 = false;
    boolean bool3 = false;
    boolean bool4 = false;
    int i1 = -1;
    int i2 = -1;
    boolean bool5 = false;
    boolean bool6 = false;
    int i3 = 1;
    int i4 = paramu.a();
    int i5 = 0;
    Object localObject1 = null;
    boolean bool8;
    for (boolean bool7 = false; i5 < i4; bool7 = bool8)
    {
      String str1 = paramu.a(i5);
      String str2 = paramu.b(i5);
      int i6;
      if (str1.equalsIgnoreCase("Cache-Control"))
        if (localObject1 != null)
        {
          i3 = 0;
          bool8 = bool7;
          i6 = 0;
        }
      while (true)
      {
        label93: if (i6 >= str2.length())
          break label502;
        int i7 = am.a(str2, i6, "=,;");
        String str3 = str2.substring(i6, i7).trim();
        Object localObject3;
        if ((i7 == str2.length()) || (str2.charAt(i7) == ',') || (str2.charAt(i7) == ';'))
        {
          i6 = i7 + 1;
          localObject3 = null;
        }
        while (true)
        {
          if (!"no-cache".equalsIgnoreCase(str3))
            break label320;
          bool8 = true;
          break label93;
          localObject1 = str2;
          break;
          if (!str1.equalsIgnoreCase("Pragma"))
            break label498;
          i3 = 0;
          break;
          int i8 = am.a(str2, i7 + 1);
          if ((i8 < str2.length()) && (str2.charAt(i8) == '"'))
          {
            int i10 = i8 + 1;
            int i11 = am.a(str2, i10, "\"");
            String str5 = str2.substring(i10, i11);
            i6 = i11 + 1;
            localObject3 = str5;
            continue;
          }
          int i9 = am.a(str2, i8, ",;");
          String str4 = str2.substring(i8, i9).trim();
          i6 = i9;
          localObject3 = str4;
        }
        label320: if ("no-store".equalsIgnoreCase(str3))
        {
          bool1 = true;
          continue;
        }
        if ("max-age".equalsIgnoreCase(str3))
        {
          m = am.b(localObject3, -1);
          continue;
        }
        if ("s-maxage".equalsIgnoreCase(str3))
        {
          n = am.b(localObject3, -1);
          continue;
        }
        if ("private".equalsIgnoreCase(str3))
        {
          bool2 = true;
          continue;
        }
        if ("public".equalsIgnoreCase(str3))
        {
          bool3 = true;
          continue;
        }
        if ("must-revalidate".equalsIgnoreCase(str3))
        {
          bool4 = true;
          continue;
        }
        if ("max-stale".equalsIgnoreCase(str3))
        {
          i1 = am.b(localObject3, 2147483647);
          continue;
        }
        if ("min-fresh".equalsIgnoreCase(str3))
        {
          i2 = am.b(localObject3, -1);
          continue;
        }
        if ("only-if-cached".equalsIgnoreCase(str3))
        {
          bool5 = true;
          continue;
        }
        if (!"no-transform".equalsIgnoreCase(str3))
          continue;
        bool6 = true;
      }
      label498: bool8 = bool7;
      label502: i5++;
    }
    if (i3 == 0);
    for (Object localObject2 = null; ; localObject2 = localObject1)
      return new d(bool7, bool1, m, n, bool2, bool3, bool4, i1, i2, bool5, bool6, (String)localObject2);
  }

  public final boolean a()
  {
    return this.a;
  }

  public final boolean b()
  {
    return this.b;
  }

  public final int c()
  {
    return this.c;
  }

  public final boolean d()
  {
    return this.e;
  }

  public final boolean e()
  {
    return this.f;
  }

  public final boolean f()
  {
    return this.g;
  }

  public final int g()
  {
    return this.h;
  }

  public final int h()
  {
    return this.i;
  }

  public final boolean i()
  {
    return this.j;
  }

  public final String toString()
  {
    String str1 = this.l;
    if (str1 != null)
      return str1;
    StringBuilder localStringBuilder = new StringBuilder();
    if (this.a)
      localStringBuilder.append("no-cache, ");
    if (this.b)
      localStringBuilder.append("no-store, ");
    if (this.c != -1)
      localStringBuilder.append("max-age=").append(this.c).append(", ");
    if (this.d != -1)
      localStringBuilder.append("s-maxage=").append(this.d).append(", ");
    if (this.e)
      localStringBuilder.append("private, ");
    if (this.f)
      localStringBuilder.append("public, ");
    if (this.g)
      localStringBuilder.append("must-revalidate, ");
    if (this.h != -1)
      localStringBuilder.append("max-stale=").append(this.h).append(", ");
    if (this.i != -1)
      localStringBuilder.append("min-fresh=").append(this.i).append(", ");
    if (this.j)
      localStringBuilder.append("only-if-cached, ");
    if (this.k)
      localStringBuilder.append("no-transform, ");
    if (localStringBuilder.length() == 0);
    for (String str2 = ""; ; str2 = localStringBuilder.toString())
    {
      this.l = str2;
      return str2;
      localStringBuilder.delete(-2 + localStringBuilder.length(), localStringBuilder.length());
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.d
 * JD-Core Version:    0.6.0
 */