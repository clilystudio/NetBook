package com.alipay.android.phone.mrpc.core;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.Header;

public final class u extends y
{
  private String a;
  private byte[] b;
  private String c;
  private ArrayList<Header> d;
  private Map<String, String> e;
  private boolean f;

  public u(String paramString)
  {
    this.a = paramString;
    this.d = new ArrayList();
    this.e = new HashMap();
    this.c = "application/x-www-form-urlencoded";
  }

  public final String a()
  {
    return this.a;
  }

  public final void a(String paramString)
  {
    this.c = paramString;
  }

  public final void a(String paramString1, String paramString2)
  {
    if (this.e == null)
      this.e = new HashMap();
    this.e.put(paramString1, paramString2);
  }

  public final void a(Header paramHeader)
  {
    this.d.add(paramHeader);
  }

  public final void a(boolean paramBoolean)
  {
    this.f = paramBoolean;
  }

  public final void a(byte[] paramArrayOfByte)
  {
    this.b = paramArrayOfByte;
  }

  public final String b(String paramString)
  {
    if (this.e == null)
      return null;
    return (String)this.e.get(paramString);
  }

  public final byte[] b()
  {
    return this.b;
  }

  public final String c()
  {
    return this.c;
  }

  public final ArrayList<Header> d()
  {
    return this.d;
  }

  public final boolean e()
  {
    return this.f;
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    u localu;
    do
      while (true)
      {
        return true;
        if (paramObject == null)
          return false;
        if (getClass() != paramObject.getClass())
          return false;
        localu = (u)paramObject;
        if (this.b == null)
        {
          if (localu.b != null)
            return false;
        }
        else if (!this.b.equals(localu.b))
          return false;
        if (this.a != null)
          break;
        if (localu.a != null)
          return false;
      }
    while (this.a.equals(localu.a));
    return false;
  }

  public final int hashCode()
  {
    int i = 1;
    if ((this.e != null) && (this.e.containsKey("id")))
      i = 31 + ((String)this.e.get("id")).hashCode();
    int j = i * 31;
    if (this.a == null);
    for (int k = 0; ; k = this.a.hashCode())
      return k + j;
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.a;
    arrayOfObject[1] = this.d;
    return String.format("Url : %s,HttpHeader: %s", arrayOfObject);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.mrpc.core.u
 * JD-Core Version:    0.6.0
 */