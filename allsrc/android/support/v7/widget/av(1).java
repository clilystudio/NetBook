package android.support.v7.widget;

import android.graphics.Bitmap;
import com.nostra13.universalimageloader.a.b.a;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public class av
  implements a
{
  int a;
  int b;
  boolean c;
  boolean d;
  int[] f;
  List<StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem> g;
  private final a h;
  private final Comparator<String> i;

  public Bitmap a(String paramString)
  {
    return (Bitmap)this.h.b(paramString);
  }

  void a()
  {
    this.a = -1;
    this.b = -2147483648;
    this.c = false;
    this.d = false;
  }

  void a(int paramInt)
  {
    if (this.c)
    {
      this.b = (this.e.a.d() - paramInt);
      return;
    }
    this.b = (paramInt + this.e.a.c());
  }

  void a(int paramInt1, int paramInt2)
  {
    if ((this.f == null) || (paramInt1 >= this.f.length));
    do
    {
      return;
      e(paramInt1 + paramInt2);
      System.arraycopy(this.f, paramInt1 + paramInt2, this.f, paramInt1, this.f.length - paramInt1 - paramInt2);
      Arrays.fill(this.f, this.f.length - paramInt2, this.f.length, -1);
    }
    while (this.g == null);
    int j = paramInt1 + paramInt2;
    int k = -1 + this.g.size();
    label92: StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem localFullSpanItem;
    if (k >= 0)
    {
      localFullSpanItem = (StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)this.g.get(k);
      if (localFullSpanItem.a >= paramInt1)
      {
        if (localFullSpanItem.a >= j)
          break label149;
        this.g.remove(k);
      }
    }
    while (true)
    {
      k--;
      break label92;
      break;
      label149: localFullSpanItem.a -= paramInt2;
    }
  }

  void a(int paramInt, aR paramaR)
  {
    e(paramInt);
    this.f[paramInt] = paramaR.d;
  }

  public boolean a(String paramString, Bitmap paramBitmap)
  {
    while (true)
    {
      synchronized (this.h)
      {
        Iterator localIterator = this.h.d().iterator();
        if (localIterator.hasNext())
        {
          str = (String)localIterator.next();
          if (this.i.compare(paramString, str) != 0)
            continue;
          if (str == null)
            continue;
          this.h.a(str);
          return this.h.a(paramString, paramBitmap);
        }
      }
      String str = null;
    }
  }

  int b(int paramInt)
  {
    if (this.f == null)
      return -1;
    if (paramInt >= this.f.length)
      return -1;
    int m;
    if (this.g != null)
    {
      StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem localFullSpanItem1 = f(paramInt);
      if (localFullSpanItem1 != null)
        this.g.remove(localFullSpanItem1);
      int k = this.g.size();
      m = 0;
      if (m >= k)
        break label182;
      if (((StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)this.g.get(m)).a < paramInt);
    }
    while (true)
    {
      StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem localFullSpanItem2;
      if (m != -1)
      {
        localFullSpanItem2 = (StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)this.g.get(m);
        this.g.remove(m);
      }
      for (int j = localFullSpanItem2.a; ; j = -1)
      {
        if (j != -1)
          break label166;
        Arrays.fill(this.f, paramInt, this.f.length, -1);
        return this.f.length;
        m++;
        break;
      }
      label166: Arrays.fill(this.f, paramInt, j + 1, -1);
      return j + 1;
      label182: m = -1;
    }
  }

  void b()
  {
    if (this.c);
    for (int j = this.e.a.d(); ; j = this.e.a.c())
    {
      this.b = j;
      return;
    }
  }

  void b(int paramInt1, int paramInt2)
  {
    if ((this.f == null) || (paramInt1 >= this.f.length));
    while (true)
    {
      return;
      e(paramInt1 + paramInt2);
      System.arraycopy(this.f, paramInt1, this.f, paramInt1 + paramInt2, this.f.length - paramInt1 - paramInt2);
      Arrays.fill(this.f, paramInt1, paramInt1 + paramInt2, -1);
      if (this.g == null)
        continue;
      for (int j = -1 + this.g.size(); j >= 0; j--)
      {
        StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem localFullSpanItem = (StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)this.g.get(j);
        if (localFullSpanItem.a < paramInt1)
          continue;
        localFullSpanItem.a = (paramInt2 + localFullSpanItem.a);
      }
    }
  }

  public void b(String paramString)
  {
    this.h.a(paramString);
  }

  int c(int paramInt)
  {
    if ((this.f == null) || (paramInt >= this.f.length))
      return -1;
    return this.f[paramInt];
  }

  void c()
  {
    if (this.f != null)
      Arrays.fill(this.f, -1);
    this.g = null;
  }

  int d(int paramInt)
  {
    int j = this.f.length;
    while (j <= paramInt)
      j <<= 1;
    return j;
  }

  public Collection<String> d()
  {
    return this.h.d();
  }

  public String e()
  {
    return null;
  }

  void e(int paramInt)
  {
    if (this.f == null)
    {
      this.f = new int[1 + Math.max(paramInt, 10)];
      Arrays.fill(this.f, -1);
    }
    do
      return;
    while (paramInt < this.f.length);
    int[] arrayOfInt = this.f;
    this.f = new int[d(paramInt)];
    System.arraycopy(arrayOfInt, 0, this.f, 0, arrayOfInt.length);
    Arrays.fill(this.f, arrayOfInt.length, this.f.length, -1);
  }

  public StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem f(int paramInt)
  {
    StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem localFullSpanItem;
    if (this.g == null)
    {
      localFullSpanItem = null;
      return localFullSpanItem;
    }
    for (int j = -1 + this.g.size(); ; j--)
    {
      if (j < 0)
        break label55;
      localFullSpanItem = (StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)this.g.get(j);
      if (localFullSpanItem.a == paramInt)
        break;
    }
    label55: return null;
  }

  public boolean f()
  {
    return false;
  }

  public String g()
  {
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.av
 * JD-Core Version:    0.6.0
 */