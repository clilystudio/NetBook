package org.json.alipay;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;

public class a
{
  private ArrayList a;

  public a()
  {
    this.a = new ArrayList();
  }

  public a(Object paramObject)
  {
    this();
    if (paramObject.getClass().isArray())
    {
      int i = Array.getLength(paramObject);
      for (int j = 0; j < i; j++)
      {
        Object localObject = Array.get(paramObject, j);
        this.a.add(localObject);
      }
    }
    throw new JSONException("JSONArray initial value should be a string or collection or array.");
  }

  public a(String paramString)
  {
    this(new d(paramString));
  }

  public a(Collection paramCollection)
  {
    if (paramCollection == null);
    for (ArrayList localArrayList = new ArrayList(); ; localArrayList = new ArrayList(paramCollection))
    {
      this.a = localArrayList;
      return;
    }
  }

  public a(d paramd)
  {
    this();
    int i = paramd.c();
    char c1;
    if (i == 91)
    {
      c1 = ']';
      if (paramd.c() != ']')
        break label47;
    }
    label47: char c2;
    do
    {
      return;
      if (i == 40)
      {
        c1 = ')';
        break;
      }
      throw paramd.a("A JSONArray text must start with '['");
      paramd.a();
      while (true)
      {
        if (paramd.c() == ',')
        {
          paramd.a();
          this.a.add(null);
        }
        while (true)
        {
          c2 = paramd.c();
          switch (c2)
          {
          default:
            throw paramd.a("Expected a ',' or ']'");
            paramd.a();
            this.a.add(paramd.d());
          case ',':
          case ';':
          case ')':
          case ']':
          }
        }
        if (paramd.c() == ']')
          break;
        paramd.a();
      }
    }
    while (c1 == c2);
    throw paramd.a("Expected a '" + new Character(c1) + "'");
  }

  private String a(String paramString)
  {
    int i = this.a.size();
    StringBuffer localStringBuffer = new StringBuffer();
    for (int j = 0; j < i; j++)
    {
      if (j > 0)
        localStringBuffer.append(paramString);
      localStringBuffer.append(b.a(this.a.get(j)));
    }
    return localStringBuffer.toString();
  }

  public final int a()
  {
    return this.a.size();
  }

  public final Object a(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= this.a.size()));
    for (Object localObject = null; localObject == null; localObject = this.a.get(paramInt))
      throw new JSONException("JSONArray[" + paramInt + "] not found.");
    return localObject;
  }

  public String toString()
  {
    try
    {
      String str = "[" + a(",") + ']';
      return str;
    }
    catch (Exception localException)
    {
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.json.alipay.a
 * JD-Core Version:    0.6.0
 */