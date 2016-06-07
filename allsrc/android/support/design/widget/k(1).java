package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.support.design.R.styleable;
import android.support.v4.text.TextDirectionHeuristicCompat;
import android.support.v4.text.TextDirectionHeuristicsCompat;
import android.support.v4.view.ViewCompat;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.view.View;
import android.view.animation.Interpolator;

final class k
{
  private static final boolean a;
  private static final Paint b;
  private float A;
  private float B;
  private final TextPaint C;
  private Interpolator D;
  private Interpolator E;
  private final View c;
  private float d;
  private final Rect e;
  private final Rect f;
  private int g = 16;
  private int h = 16;
  private float i;
  private float j;
  private int k;
  private int l;
  private float m;
  private float n;
  private CharSequence o;
  private CharSequence p;
  private float q;
  private boolean r;
  private boolean s;
  private Bitmap t;
  private Paint u;
  private float v;
  private float w;
  private float x;
  private float y;
  private float z;

  static
  {
    if (Build.VERSION.SDK_INT < 18);
    for (boolean bool = true; ; bool = false)
    {
      a = bool;
      b = null;
      return;
    }
  }

  public k(View paramView)
  {
    this.c = paramView;
    this.C = new TextPaint();
    this.C.setAntiAlias(true);
    this.f = new Rect();
    this.e = new Rect();
  }

  private static float a(float paramFloat1, float paramFloat2, float paramFloat3, Interpolator paramInterpolator)
  {
    if (paramInterpolator != null)
      paramFloat3 = paramInterpolator.getInterpolation(paramFloat3);
    return a.a(paramFloat1, paramFloat2, paramFloat3);
  }

  private static boolean a(float paramFloat1, float paramFloat2)
  {
    return Math.abs(paramFloat1 - paramFloat2) < 0.001F;
  }

  private void f()
  {
    float f1 = this.d;
    this.x = a(this.e.left, this.f.left, f1, this.D);
    this.z = a(this.m, this.n, f1, this.D);
    this.y = a(this.e.right, this.f.right, f1, this.D);
    float f2 = a(this.i, this.j, f1, this.E);
    float f10;
    float f11;
    int i3;
    if (this.o != null)
    {
      if (!a(f2, this.j))
        break label518;
      float f12 = this.f.width();
      float f13 = this.j;
      this.A = 1.0F;
      f10 = f12;
      f11 = f13;
      if (f10 <= 0.0F)
        break label802;
      if (this.B == f11)
        break label582;
      i3 = 1;
      label165: this.B = f11;
    }
    while (true)
    {
      int i4;
      label257: TextDirectionHeuristicCompat localTextDirectionHeuristicCompat;
      label267: boolean bool;
      if ((this.p == null) || (i3 != 0))
      {
        this.C.setTextSize(this.B);
        CharSequence localCharSequence1 = TextUtils.ellipsize(this.o, this.C, f10, TextUtils.TruncateAt.END);
        if ((this.p == null) || (!this.p.equals(localCharSequence1)))
          this.p = localCharSequence1;
        CharSequence localCharSequence2 = this.p;
        if (ViewCompat.getLayoutDirection(this.c) == 1)
        {
          i4 = 1;
          if (i4 == 0)
            break label594;
          localTextDirectionHeuristicCompat = TextDirectionHeuristicsCompat.FIRSTSTRONG_RTL;
          this.r = localTextDirectionHeuristicCompat.isRtl(localCharSequence2, 0, localCharSequence2.length());
          this.q = this.C.measureText(this.p, 0, this.p.length());
        }
      }
      else
      {
        if ((!a) || (this.A == 1.0F))
          break label602;
        bool = true;
        label331: this.s = bool;
        if ((this.s) && (this.t == null) && (!this.e.isEmpty()) && (!TextUtils.isEmpty(this.p)))
          break label608;
        label371: ViewCompat.postInvalidateOnAnimation(this.c);
        if (this.l == this.k)
          break label788;
        TextPaint localTextPaint = this.C;
        int i1 = this.k;
        int i2 = this.l;
        float f3 = 1.0F - f1;
        float f4 = f3 * Color.alpha(i1) + f1 * Color.alpha(i2);
        float f5 = f3 * Color.red(i1) + f1 * Color.red(i2);
        float f6 = f3 * Color.green(i1) + f1 * Color.green(i2);
        float f7 = f3 * Color.blue(i1) + f1 * Color.blue(i2);
        localTextPaint.setColor(Color.argb((int)f4, (int)f5, (int)f6, (int)f7));
      }
      while (true)
      {
        ViewCompat.postInvalidateOnAnimation(this.c);
        return;
        label518: float f8 = this.e.width();
        float f9 = this.i;
        if (a(f2, this.i))
        {
          this.A = 1.0F;
          f10 = f8;
          f11 = f9;
          break;
        }
        this.A = (f2 / this.i);
        f10 = f8;
        f11 = f9;
        break;
        label582: i3 = 0;
        break label165;
        i4 = 0;
        break label257;
        label594: localTextDirectionHeuristicCompat = TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR;
        break label267;
        label602: bool = false;
        break label331;
        label608: this.C.setTextSize(this.i);
        this.C.setColor(this.k);
        int i5 = Math.round(this.C.measureText(this.p, 0, this.p.length()));
        int i6 = Math.round(this.C.descent() - this.C.ascent());
        this.q = i5;
        if ((i5 <= 0) && (i6 <= 0))
          break label371;
        this.t = Bitmap.createBitmap(i5, i6, Bitmap.Config.ARGB_8888);
        new Canvas(this.t).drawText(this.p, 0, this.p.length(), 0.0F, i6 - this.C.descent(), this.C);
        if (this.u != null)
          break label371;
        this.u = new Paint();
        this.u.setAntiAlias(true);
        this.u.setFilterBitmap(true);
        break label371;
        label788: this.C.setColor(this.l);
      }
      label802: i3 = 0;
    }
  }

  private void g()
  {
    if (this.t != null)
    {
      this.t.recycle();
      this.t = null;
    }
  }

  final float a()
  {
    return this.d;
  }

  final void a(float paramFloat)
  {
    if (this.i != paramFloat)
    {
      this.i = paramFloat;
      c();
    }
  }

  final void a(int paramInt)
  {
    if (this.l != paramInt)
    {
      this.l = paramInt;
      c();
    }
  }

  final void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.e.set(paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public final void a(Canvas paramCanvas)
  {
    int i1 = paramCanvas.save();
    float f1;
    float f2;
    int i2;
    label50: float f3;
    label77: float f4;
    if (this.p != null)
    {
      boolean bool = this.r;
      if (!bool)
        break label154;
      f1 = this.y;
      f2 = this.z;
      if ((!this.s) || (this.t == null))
        break label163;
      i2 = 1;
      this.C.setTextSize(this.B);
      if (i2 == 0)
        break label169;
      f3 = this.v * this.A;
      if (i2 != 0)
        f2 += f3;
      if (this.A != 1.0F)
        paramCanvas.scale(this.A, this.A, f1, f2);
      if (!bool)
        break label220;
      f4 = f1 - this.q;
    }
    while (true)
    {
      if (i2 != 0)
        paramCanvas.drawBitmap(this.t, f4, f2, this.u);
      while (true)
      {
        paramCanvas.restoreToCount(i1);
        return;
        label154: f1 = this.x;
        break;
        label163: i2 = 0;
        break label50;
        label169: this.C.ascent();
        this.C.descent();
        f3 = 0.0F;
        break label77;
        paramCanvas.drawText(this.p, 0, this.p.length(), f4, f2, this.C);
      }
      label220: f4 = f1;
    }
  }

  final void a(Interpolator paramInterpolator)
  {
    this.E = paramInterpolator;
    c();
  }

  final void a(CharSequence paramCharSequence)
  {
    if ((paramCharSequence == null) || (!paramCharSequence.equals(this.o)))
    {
      this.o = paramCharSequence;
      this.p = null;
      g();
      c();
    }
  }

  final float b()
  {
    return this.i;
  }

  final void b(float paramFloat)
  {
    if (paramFloat < 0.0F)
      paramFloat = 0.0F;
    while (true)
    {
      if (paramFloat != this.d)
      {
        this.d = paramFloat;
        f();
      }
      return;
      if (paramFloat <= 1.0F)
        continue;
      paramFloat = 1.0F;
    }
  }

  final void b(int paramInt)
  {
    if (this.k != paramInt)
    {
      this.k = paramInt;
      c();
    }
  }

  final void b(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.f.set(paramInt1, paramInt2, paramInt3, paramInt4);
  }

  final void b(Interpolator paramInterpolator)
  {
    this.D = paramInterpolator;
    c();
  }

  public final void c()
  {
    if ((this.c.getHeight() > 0) && (this.c.getWidth() > 0))
    {
      this.C.setTextSize(this.j);
      switch (this.h)
      {
      default:
        this.n = ((this.C.descent() - this.C.ascent()) / 2.0F - this.C.descent() + this.f.centerY());
        this.C.setTextSize(this.i);
        switch (this.g)
        {
        default:
          this.m = ((this.C.descent() - this.C.ascent()) / 2.0F - this.C.descent() + this.e.centerY());
        case 80:
        case 48:
        }
      case 80:
      case 48:
      }
    }
    while (true)
    {
      this.v = this.C.ascent();
      this.w = this.C.descent();
      g();
      f();
      return;
      this.n = this.f.bottom;
      break;
      this.n = (this.f.top - this.C.ascent());
      break;
      this.m = this.e.bottom;
      continue;
      this.m = (this.e.top - this.C.ascent());
    }
  }

  final void c(int paramInt)
  {
    if (this.g != 80)
    {
      this.g = 80;
      c();
    }
  }

  final CharSequence d()
  {
    return this.o;
  }

  final void d(int paramInt)
  {
    if (this.h != 48)
    {
      this.h = 48;
      c();
    }
  }

  final int e()
  {
    return this.l;
  }

  final void e(int paramInt)
  {
    TypedArray localTypedArray = this.c.getContext().obtainStyledAttributes(paramInt, R.styleable.TextAppearance);
    if (localTypedArray.hasValue(R.styleable.TextAppearance_android_textColor))
      this.l = localTypedArray.getColor(R.styleable.TextAppearance_android_textColor, 0);
    if (localTypedArray.hasValue(R.styleable.TextAppearance_android_textSize))
      this.j = localTypedArray.getDimensionPixelSize(R.styleable.TextAppearance_android_textSize, 0);
    localTypedArray.recycle();
    c();
  }

  final void f(int paramInt)
  {
    TypedArray localTypedArray = this.c.getContext().obtainStyledAttributes(paramInt, R.styleable.TextAppearance);
    if (localTypedArray.hasValue(R.styleable.TextAppearance_android_textColor))
      this.k = localTypedArray.getColor(R.styleable.TextAppearance_android_textColor, 0);
    if (localTypedArray.hasValue(R.styleable.TextAppearance_android_textSize))
      this.i = localTypedArray.getDimensionPixelSize(R.styleable.TextAppearance_android_textSize, 0);
    localTypedArray.recycle();
    c();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.k
 * JD-Core Version:    0.6.0
 */