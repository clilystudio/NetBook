package android.support.design.widget;

import android.graphics.Rect;
import android.graphics.drawable.Drawable;

final class y
  implements N
{
  y(FloatingActionButton paramFloatingActionButton)
  {
  }

  public final float a()
  {
    return this.a.c() / 2.0F;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    FloatingActionButton.a(this.a).set(paramInt1, paramInt2, paramInt3, paramInt4);
    this.a.setPadding(paramInt1 + FloatingActionButton.b(this.a), paramInt2 + FloatingActionButton.b(this.a), paramInt3 + FloatingActionButton.b(this.a), paramInt4 + FloatingActionButton.b(this.a));
  }

  public final void a(Drawable paramDrawable)
  {
    FloatingActionButton.a(this.a, paramDrawable);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.y
 * JD-Core Version:    0.6.0
 */