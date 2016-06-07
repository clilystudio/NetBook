package uk.co.senab.photoview.c;

import android.annotation.TargetApi;
import android.content.Context;
import android.widget.OverScroller;

@TargetApi(9)
public class a extends d
{
  protected final OverScroller a;
  private boolean b = false;

  public a(Context paramContext)
  {
    this.a = new OverScroller(paramContext);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int paramInt9, int paramInt10)
  {
    this.a.fling(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8, 0, 0);
  }

  public final void a(boolean paramBoolean)
  {
    this.a.forceFinished(true);
  }

  public boolean a()
  {
    return this.a.computeScrollOffset();
  }

  public final boolean b()
  {
    return this.a.isFinished();
  }

  public final int c()
  {
    return this.a.getCurrX();
  }

  public final int d()
  {
    return this.a.getCurrY();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     uk.co.senab.photoview.c.a
 * JD-Core Version:    0.6.0
 */