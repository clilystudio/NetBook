package android.support.v7.widget;

import android.support.design.widget.K;
import java.util.ArrayList;

public abstract class ak
{
  private al a = null;
  private ArrayList<K> b = new ArrayList();
  private long c = 120L;
  private long d = 120L;
  private long e = 250L;
  private long f = 250L;
  private boolean g = true;

  public abstract void a();

  final void a(al paramal)
  {
    this.a = paramal;
  }

  public final void a(ay paramay, boolean paramBoolean)
  {
    if (this.a != null)
      this.a.d(paramay);
  }

  public abstract boolean a(ay paramay);

  public abstract boolean a(ay paramay, int paramInt1, int paramInt2, int paramInt3, int paramInt4);

  public abstract boolean a(ay paramay1, ay paramay2, int paramInt1, int paramInt2, int paramInt3, int paramInt4);

  public abstract boolean b();

  public abstract boolean b(ay paramay);

  public abstract void c();

  public abstract void c(ay paramay);

  public final long d()
  {
    return this.e;
  }

  public final void d(ay paramay)
  {
    if (this.a != null)
      this.a.a(paramay);
  }

  public final long e()
  {
    return this.c;
  }

  public final void e(ay paramay)
  {
    if (this.a != null)
      this.a.c(paramay);
  }

  public final long f()
  {
    return this.d;
  }

  public final void f(ay paramay)
  {
    if (this.a != null)
      this.a.b(paramay);
  }

  public final long g()
  {
    return this.f;
  }

  public final boolean h()
  {
    return this.g;
  }

  public final void i()
  {
    int i = this.b.size();
    for (int j = 0; j < i; j++)
      this.b.get(j);
    this.b.clear();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ak
 * JD-Core Version:    0.6.0
 */