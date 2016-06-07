package org.litepal.c;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import org.litepal.LitePalApplication;
import org.litepal.exceptions.InvalidAttributesException;

public final class a
{
  private static a a;
  private int b;
  private String c;
  private String d;
  private List<String> e;

  public static a a()
  {
    if (a == null)
      monitorenter;
    try
    {
      if (a == null)
        a = new a();
      return a;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  final void a(int paramInt)
  {
    this.b = paramInt;
  }

  final void a(String paramString)
  {
    this.c = paramString;
  }

  public final int b()
  {
    return this.b;
  }

  final void b(String paramString)
  {
    d().add(paramString);
  }

  public final String c()
  {
    return this.c;
  }

  final void c(String paramString)
  {
    this.d = paramString;
  }

  public final List<String> d()
  {
    if (this.e == null)
    {
      this.e = new ArrayList();
      this.e.add("org.litepal.model.Table_Schema");
    }
    while (true)
    {
      return this.e;
      if (!this.e.isEmpty())
        continue;
      this.e.add("org.litepal.model.Table_Schema");
    }
  }

  public final String e()
  {
    return this.d;
  }

  public final boolean f()
  {
    if (TextUtils.isEmpty(this.c))
      throw new InvalidAttributesException("dbname is empty or not defined in litepal.xml file");
    if (!this.c.endsWith(".db"))
      this.c += ".db";
    if (this.b <= 0)
      throw new InvalidAttributesException("the version of database can not be less than 1");
    if (this.b < LitePalApplication.a().getSharedPreferences("litepal_prefs", 0).getInt("litepal_version", 0))
      throw new InvalidAttributesException("the version in litepal.xml is earlier than the current version");
    if (TextUtils.isEmpty(this.d))
      this.d = "lower";
    do
      return true;
    while ((this.d.equals("upper")) || (this.d.equals("lower")) || (this.d.equals("keep")));
    throw new InvalidAttributesException(this.d + " is an invalid value for <cases></cases>");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.litepal.c.a
 * JD-Core Version:    0.6.0
 */