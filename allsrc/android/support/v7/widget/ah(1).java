package android.support.v7.widget;

import android.support.v4.os.TraceCompat;
import android.view.ViewGroup;

public abstract class ah<VH extends ay>
{
  private final ai a = new ai();
  private boolean b = false;

  public abstract int a();

  public int a(int paramInt)
  {
    return 0;
  }

  public abstract VH a(ViewGroup paramViewGroup, int paramInt);

  public final void a(aj paramaj)
  {
    this.a.registerObserver(paramaj);
  }

  public abstract void a(VH paramVH, int paramInt);

  public final void b()
  {
    this.a.a();
  }

  public final void b(int paramInt)
  {
    this.a.a(0, 1);
  }

  public final void b(aj paramaj)
  {
    this.a.unregisterObserver(paramaj);
  }

  public final void b(VH paramVH, int paramInt)
  {
    paramVH.b = paramInt;
    paramVH.a(1, 519);
    TraceCompat.beginSection("RV OnBindView");
    a(paramVH, paramInt);
    TraceCompat.endSection();
  }

  public final void c(int paramInt)
  {
    this.a.b(0, 1);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ah
 * JD-Core Version:    0.6.0
 */