package android.support.v7.widget;

import android.support.v4.view.ViewCompat;
import android.util.Log;
import android.view.View;

public abstract class ay
{
  public final View a;
  int b = -1;
  int c = -1;
  long d = -1L;
  int e = -1;
  int f = -1;
  ay g = null;
  ay h = null;
  private int i;
  private int j = 0;
  private ar k = null;

  public ay(View paramView)
  {
    if (paramView == null)
      throw new IllegalArgumentException("itemView may not be null");
    this.a = paramView;
  }

  final void a()
  {
    this.c = -1;
    this.f = -1;
  }

  final void a(int paramInt1, int paramInt2)
  {
    this.i = (this.i & (paramInt2 ^ 0xFFFFFFFF) | paramInt1 & paramInt2);
  }

  final void a(int paramInt, boolean paramBoolean)
  {
    if (this.c == -1)
      this.c = this.b;
    if (this.f == -1)
      this.f = this.b;
    if (paramBoolean)
      this.f = (paramInt + this.f);
    this.b = (paramInt + this.b);
    if (this.a.getLayoutParams() != null)
      ((ap)this.a.getLayoutParams()).c = true;
  }

  final void a(ar paramar)
  {
    this.k = paramar;
  }

  public final void a(boolean paramBoolean)
  {
    int m;
    if (paramBoolean)
    {
      m = -1 + this.j;
      this.j = m;
      if (this.j >= 0)
        break label61;
      this.j = 0;
      Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
    }
    label61: 
    do
    {
      return;
      m = 1 + this.j;
      break;
      if ((paramBoolean) || (this.j != 1))
        continue;
      this.i = (0x10 | this.i);
      return;
    }
    while ((!paramBoolean) || (this.j != 0));
    this.i = (0xFFFFFFEF & this.i);
  }

  final boolean a(int paramInt)
  {
    return (0x4E & this.i) != 0;
  }

  final void b(int paramInt)
  {
    this.i = (paramInt | this.i);
  }

  final boolean b()
  {
    return (0x80 & this.i) != 0;
  }

  public final int c()
  {
    if (this.f == -1)
      return this.b;
    return this.f;
  }

  final boolean d()
  {
    return this.k != null;
  }

  final void e()
  {
    this.k.b(this);
  }

  final boolean f()
  {
    return (0x20 & this.i) != 0;
  }

  final void g()
  {
    this.i = (0xFFFFFFDF & this.i);
  }

  final void h()
  {
    this.i = (0xFFFFFEFF & this.i);
  }

  final boolean i()
  {
    return (0x4 & this.i) != 0;
  }

  final boolean j()
  {
    return (0x2 & this.i) != 0;
  }

  final boolean k()
  {
    return (0x40 & this.i) != 0;
  }

  final boolean l()
  {
    return (0x1 & this.i) != 0;
  }

  final boolean m()
  {
    return (0x8 & this.i) != 0;
  }

  final boolean n()
  {
    return (0x100 & this.i) != 0;
  }

  final void o()
  {
    this.i = 0;
    this.b = -1;
    this.c = -1;
    this.d = -1L;
    this.f = -1;
    this.j = 0;
    this.g = null;
    this.h = null;
  }

  public final boolean p()
  {
    return ((0x10 & this.i) == 0) && (!ViewCompat.hasTransientState(this.a));
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("ViewHolder{" + Integer.toHexString(hashCode()) + " position=" + this.b + " id=" + this.d + ", oldPos=" + this.c + ", pLpos:" + this.f);
    if (d())
      localStringBuilder.append(" scrap");
    if (i())
      localStringBuilder.append(" invalid");
    if (!l())
      localStringBuilder.append(" unbound");
    if (j())
      localStringBuilder.append(" update");
    if (m())
      localStringBuilder.append(" removed");
    if (b())
      localStringBuilder.append(" ignored");
    if (k())
      localStringBuilder.append(" changed");
    if (n())
      localStringBuilder.append(" tmpDetached");
    if (!p())
      localStringBuilder.append(" not recyclable(" + this.j + ")");
    if (((0x200 & this.i) != 0) || (i()));
    for (int m = 1; ; m = 0)
    {
      if (m != 0)
        localStringBuilder.append("undefined adapter position");
      if (this.a.getParent() == null)
        localStringBuilder.append(" no parent");
      localStringBuilder.append("}");
      return localStringBuilder.toString();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ay
 * JD-Core Version:    0.6.0
 */