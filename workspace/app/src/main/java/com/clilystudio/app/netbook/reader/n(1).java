package com.clilystudio.app.netbook.reader;

import android.content.Context;
import android.support.design.widget.am;
import com.clilystudio.app.netbook.util.CipherUtil;
import com.clilystudio.app.netbook.util.am_CommonUtils;

import java.util.LinkedList;
import java.util.List;

public final class n
{
  private final K a;
  private final ReaderChapter b;
  private int[] c;
  private int d;
  private int e;
  private int f;

  public n(K paramK, ReaderChapter paramReaderChapter, int[] paramArrayOfInt, int paramInt)
  {
    this.a = paramK;
    this.b = paramReaderChapter;
    this.c = paramArrayOfInt;
    this.e = paramInt;
    this.d = paramArrayOfInt[paramInt];
  }

  public static n a(K paramK, ReaderChapter paramReaderChapter, int paramInt)
  {
    n localn = new n(paramK, paramReaderChapter, new int[] { 0 }, 0);
    localn.f = paramInt;
    return localn;
  }

  public final ReaderChapter a()
  {
    return this.b;
  }

  public final String a(Context paramContext)
  {
    return am_CommonUtils.b(paramContext, c());
  }

  public final void a(int paramInt)
  {
    this.e = 0;
  }

  public final void a(e<n> parame)
  {
    if (e())
    {
      if (h())
      {
        this.a.b(1 + this.b.getIndex(), parame, false);
        return;
      }
      parame.a(new n(this.a, this.b, this.c, 1 + this.e));
      return;
    }
    parame.a(null);
  }

  public final void a(String paramString)
  {
    this.c = this.a.a(paramString);
    this.d = this.c[0];
  }

  public final int b()
  {
    return this.c[this.e];
  }

  public final void b(e<n> parame)
  {
    if (f())
    {
      if (this.e > 0)
      {
        parame.a(new n(this.a, this.b, this.c, -1 + this.e));
        return;
      }
      this.a.a(-1 + this.b.getIndex(), parame, false);
      return;
    }
    parame.a(null);
  }

  public final String c()
  {
    String str1 = this.b.getBody(this);
    if (str1 == null)
      return "";
    if (this.e > -1 + this.c.length)
      this.e = (-1 + this.c.length);
    this.d = this.c[this.e];
    try
    {
      if (1 + this.e < this.c.length)
        return str1.substring(this.d, this.c[(1 + this.e)]);
      String str2 = str1.substring(this.d);
      return str2;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return "";
  }

  public final Object[] d()
  {
    String str1 = this.b.getBody(this);
    if (str1 == null)
      return null;
    if (this.e > -1 + this.c.length)
      this.e = (-1 + this.c.length);
    this.d = this.c[this.e];
    Object[] arrayOfObject1 = new Object[2];
    try
    {
      if (1 + this.e < this.c.length)
      {
        str4 = str1.substring(this.d, this.c[(1 + this.e)]);
        str3 = str1.substring(this.c[(1 + this.e)]);
        int i1 = str3.indexOf("\n");
        if (i1 != -1)
          str3 = str3.substring(0, i1);
        if (!str3.startsWith("　　"))
          break label385;
      }
      else
      {
        while (true)
        {
          String[] arrayOfString = ((String)localObject).split("\n");
          int i = arrayOfString[(-1 + arrayOfString.length)].length();
          int j = str3.length();
          StringBuilder localStringBuilder = new StringBuilder();
          int k = -1 + arrayOfString.length;
          arrayOfString[k] = (arrayOfString[k] + str3);
          LinkedList localLinkedList = new LinkedList();
          int m = 0;
          do
          {
            int n = this.c[(m + this.e)] - this.d;
            Object[] arrayOfObject2 = new Object[1];
            arrayOfObject2[0] = Float.valueOf((i + n) / (i + j));
            localLinkedList.add(Integer.valueOf((int)(100.0F * Float.parseFloat(String.format("%.2f", arrayOfObject2)))));
            m++;
          }
          while ((m + this.e != this.c.length) && (this.c[(m + this.e)] - this.d < j));
          arrayOfObject1[0] = arrayOfString;
          arrayOfObject1[1] = localLinkedList;
          break;
          String str2 = str1.substring(this.d);
          localObject = str2;
          str3 = "";
        }
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        String str4;
        localException.printStackTrace();
        break;
        String str3 = "";
        label385: Object localObject = str4;
      }
    }
    return arrayOfObject1;
  }

  public final boolean e()
  {
    return (!h()) || (this.b.hasNext());
  }

  public final boolean f()
  {
    return (this.e > 0) || (this.b.hasPrevious());
  }

  public final void g()
  {
    String str = CipherUtil.a(this.b.getKey(), this.b.getContent());
    if (str == null)
      return;
    this.c = this.a.a(str);
    this.d = this.c[0];
  }

  public final boolean h()
  {
    return 1 + this.e >= this.c.length;
  }

  public final String i()
  {
    return this.b.getTitle();
  }

  public final int j()
  {
    return this.e;
  }

  public final int k()
  {
    return this.c.length;
  }

  public final int l()
  {
    return this.b.getIndex();
  }

  public final int m()
  {
    return this.d;
  }

  public final int n()
  {
    return this.f;
  }

  public final int o()
  {
    return this.b.getStatus();
  }

  public final boolean p()
  {
    return this.b.getStatus() == 1;
  }

  public final K q()
  {
    return this.a;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.n
 * JD-Core Version:    0.6.2
 */