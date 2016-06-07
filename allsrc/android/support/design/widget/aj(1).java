package android.support.design.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;

final class aj extends LinearLayout
{
  private int a;
  private final Paint b;
  private int c = -1;
  private float d;
  private int e = -1;
  private int f = -1;

  aj(TabLayout paramTabLayout, Context paramContext)
  {
    super(paramContext);
    setWillNotDraw(false);
    this.b = new Paint();
  }

  private void a()
  {
    View localView1 = getChildAt(this.c);
    int i;
    View localView2;
    if ((localView1 != null) && (localView1.getWidth() > 0))
    {
      i = localView1.getLeft();
      j = localView1.getRight();
      if ((this.d > 0.0F) && (this.c < -1 + getChildCount()))
      {
        localView2 = getChildAt(1 + this.c);
        i = (int)(this.d * localView2.getLeft() + (1.0F - this.d) * i);
      }
    }
    for (int j = (int)(this.d * localView2.getRight() + (1.0F - this.d) * j); ; j = i)
    {
      b(i, j);
      return;
      i = -1;
    }
  }

  private void b(int paramInt1, int paramInt2)
  {
    if ((paramInt1 != this.e) || (paramInt2 != this.f))
    {
      this.e = paramInt1;
      this.f = paramInt2;
      ViewCompat.postInvalidateOnAnimation(this);
    }
  }

  final void a(int paramInt)
  {
    this.b.setColor(paramInt);
    ViewCompat.postInvalidateOnAnimation(this);
  }

  final void a(int paramInt, float paramFloat)
  {
    if ((TabLayout.j(this.g) != null) && (TabLayout.j(this.g).b()))
      return;
    this.c = paramInt;
    this.d = paramFloat;
    a();
  }

  final void a(int paramInt1, int paramInt2)
  {
    int i;
    int j;
    int k;
    int i1;
    int n;
    if (ViewCompat.getLayoutDirection(this) == 1)
    {
      i = 1;
      View localView = getChildAt(paramInt1);
      j = localView.getLeft();
      k = localView.getRight();
      if (Math.abs(paramInt1 - this.c) > 1)
        break label151;
      i1 = this.e;
      n = this.f;
    }
    while (true)
    {
      if ((i1 != j) || (n != k))
      {
        au localau = TabLayout.a(this.g, aP.a());
        localau.a(a.b);
        localau.a(300);
        localau.a(0.0F, 1.0F);
        localau.a(new ak(this, i1, j, n, k));
        localau.a(new al(this, paramInt1));
        localau.a();
      }
      return;
      i = 0;
      break;
      label151: int m = TabLayout.b(this.g, 24);
      if (paramInt1 < this.c)
      {
        if (i == 0)
        {
          n = k + m;
          i1 = n;
          continue;
        }
      }
      else if (i != 0)
      {
        n = k + m;
        i1 = n;
        continue;
      }
      n = j - m;
      i1 = n;
    }
  }

  final void b(int paramInt)
  {
    this.a = paramInt;
    ViewCompat.postInvalidateOnAnimation(this);
  }

  public final void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    if ((this.e >= 0) && (this.f > this.e))
      paramCanvas.drawRect(this.e, getHeight() - this.a, this.f, getHeight(), this.b);
  }

  protected final void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    a();
  }

  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (View.MeasureSpec.getMode(paramInt1) != 1073741824);
    int i;
    int m;
    do
    {
      do
        return;
      while ((TabLayout.k(this.g) != 1) || (TabLayout.l(this.g) != 1));
      i = getChildCount();
      int j = View.MeasureSpec.makeMeasureSpec(0, 0);
      int k = 0;
      m = 0;
      while (k < i)
      {
        View localView = getChildAt(k);
        localView.measure(j, paramInt2);
        m = Math.max(m, localView.getMeasuredWidth());
        k++;
      }
    }
    while (m <= 0);
    int n = TabLayout.b(this.g, 16);
    if (m * i <= getMeasuredWidth() - (n << 1))
      for (int i1 = 0; i1 < i; i1++)
      {
        LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)getChildAt(i1).getLayoutParams();
        localLayoutParams.width = m;
        localLayoutParams.weight = 0.0F;
      }
    TabLayout.c(this.g, 0);
    TabLayout.m(this.g);
    super.onMeasure(paramInt1, paramInt2);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.aj
 * JD-Core Version:    0.6.0
 */