package uk.co.senab.photoview;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Build.VERSION;
import android.widget.ImageView;
import uk.co.senab.photoview.c.c;

final class h
  implements Runnable
{
  private final uk.co.senab.photoview.c.d a;
  private int b;
  private int c;

  public h(d paramd, Context paramContext)
  {
    Object localObject;
    if (Build.VERSION.SDK_INT < 9)
      localObject = new c(paramContext);
    while (true)
    {
      this.a = ((uk.co.senab.photoview.c.d)localObject);
      return;
      if (Build.VERSION.SDK_INT < 14)
      {
        localObject = new uk.co.senab.photoview.c.a(paramContext);
        continue;
      }
      localObject = new uk.co.senab.photoview.c.b(paramContext);
    }
  }

  public final void a()
  {
    uk.co.senab.photoview.b.a.a().a("PhotoViewAttacher", "Cancel Fling");
    this.a.a(true);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    RectF localRectF = this.d.b();
    if (localRectF == null)
      return;
    int i = Math.round(-localRectF.left);
    int k;
    int j;
    label53: int m;
    int i1;
    int n;
    if (paramInt1 < localRectF.width())
    {
      k = Math.round(localRectF.width() - paramInt1);
      j = 0;
      m = Math.round(-localRectF.top);
      if (paramInt2 >= localRectF.height())
        break label209;
      i1 = Math.round(localRectF.height() - paramInt2);
      n = 0;
    }
    while (true)
    {
      this.b = i;
      this.c = m;
      uk.co.senab.photoview.b.a.a().a("PhotoViewAttacher", "fling. StartX:" + i + " StartY:" + m + " MaxX:" + k + " MaxY:" + i1);
      if ((i == k) && (m == i1))
        break;
      this.a.a(i, m, paramInt3, paramInt4, j, k, n, i1, 0, 0);
      return;
      j = i;
      k = i;
      break label53;
      label209: n = m;
      i1 = m;
    }
  }

  public final void run()
  {
    if (this.a.b());
    ImageView localImageView;
    do
    {
      return;
      localImageView = this.d.c();
    }
    while ((localImageView == null) || (!this.a.a()));
    int i = this.a.c();
    int j = this.a.d();
    uk.co.senab.photoview.b.a.a().a("PhotoViewAttacher", "fling run(). CurrentX:" + this.b + " CurrentY:" + this.c + " NewX:" + i + " NewY:" + j);
    d.b(this.d).postTranslate(this.b - i, this.c - j);
    d.a(this.d, this.d.l());
    this.b = i;
    this.c = j;
    com.arcsoft.hpay100.a.a.a(localImageView, this);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     uk.co.senab.photoview.h
 * JD-Core Version:    0.6.0
 */