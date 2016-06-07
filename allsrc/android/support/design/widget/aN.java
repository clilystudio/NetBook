package android.support.design.widget;

import android.view.View;
import com.xiaomi.mistatistic.sdk.a.r;

class aN<V extends View> extends r<V>
{
  private aO a;
  private int b;

  public int a()
  {
    if (this.a != null)
      return this.a.b();
    return 0;
  }

  public boolean a(int paramInt)
  {
    if (this.a != null)
      return this.a.a(paramInt);
    this.b = paramInt;
    return false;
  }

  public boolean a(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt)
  {
    paramCoordinatorLayout.a(paramV, paramInt);
    if (this.a == null)
      this.a = new aO(paramV);
    this.a.a();
    if (this.b != 0)
    {
      this.a.a(this.b);
      this.b = 0;
    }
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.aN
 * JD-Core Version:    0.6.0
 */