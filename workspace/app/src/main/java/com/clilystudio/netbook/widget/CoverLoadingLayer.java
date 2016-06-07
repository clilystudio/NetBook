package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import com.c.a.D;
import com.c.a.b;
import com.clilystudio.netbook.R.styleable;

public class CoverLoadingLayer extends ImageView
{
  private b A = new x(this);
  private int a = -1308622848;
  private float b = -1.0F;
  private float c = -1.0F;
  private float d = -1.0F;
  private float e = -1.0F;
  private float f = -1.0F;
  private int g;
  private float h;
  private float i;
  private float j;
  private com.c.a.w k;
  private com.c.a.w l;
  private com.c.a.w m;
  private float n;
  private int o;
  private int p;
  private y q;
  private CoverLoadingLayer.Status r;
  private com.c.a.w s;
  private float t;
  private int u;
  private float v;
  private D w = new t(this);
  private b x = new u(this);
  private D y = new v(this);
  private D z = new w(this);

  public CoverLoadingLayer(Context paramContext)
  {
    super(paramContext);
    a(paramContext, null);
  }

  public CoverLoadingLayer(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }

  private static int a(float paramFloat)
  {
    return (int)(360.0F * (paramFloat / 100.0F) - 90.0F);
  }

  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    if (paramAttributeSet != null)
    {
      TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.CoverLoadingLayer);
      this.f = localTypedArray.getDimension(1, -1.0F);
      localTypedArray.recycle();
    }
    this.v = 0.0F;
    this.n = getResources().getDimension(2131099909);
    this.c = getResources().getDimension(2131099908);
    this.j = getResources().getDimension(2131099910);
    this.i = getResources().getDimension(2131099912);
    this.h = getResources().getDimension(2131099911);
    this.t = getResources().getDimension(2131099907);
    this.u = getResources().getColor(2131427513);
    this.e = this.c;
    i();
    this.k = com.c.a.w.a(new float[] { 0.001F, 1.0F });
    int i1 = getResources().getInteger(17694721);
    this.k.a(i1);
    this.k.a(this.z);
    this.k.a(this.x);
    this.k.a(new DecelerateInterpolator());
    this.l = com.c.a.w.a(new float[] { 1.0F, 0.001F });
    this.l.a(i1);
    this.l.a(this.w);
    this.l.a(this.A);
    this.l.a(new AccelerateInterpolator());
  }

  private boolean a(int paramInt)
  {
    if (paramInt > 100)
      return true;
    if (((this.m != null) && (this.m.d())) || (this.r == CoverLoadingLayer.Status.PAUSE))
    {
      this.p = paramInt;
      return true;
    }
    return false;
  }

  private float b(float paramFloat)
  {
    return paramFloat * getResources().getDisplayMetrics().density;
  }

  private com.c.a.w h()
  {
    float[] arrayOfFloat = new float[2];
    arrayOfFloat[0] = this.n;
    arrayOfFloat[1] = (2.0F * this.n);
    com.c.a.w localw = com.c.a.w.a(arrayOfFloat);
    localw.a(getResources().getInteger(17694721));
    localw.a(new AccelerateInterpolator());
    localw.a(new r(this));
    localw.a(new s(this));
    return localw;
  }

  private void i()
  {
    this.r = CoverLoadingLayer.Status.NONE;
    this.o = 0;
    this.p = 0;
    this.b = this.n;
    this.d = -1.0F;
  }

  private boolean j()
  {
    return (this.l != null) && (this.l.d());
  }

  public final boolean a()
  {
    return this.o == 100;
  }

  public final void b()
  {
    this.r = CoverLoadingLayer.Status.PAUSE;
    this.d = this.e;
    invalidate();
  }

  public final void c()
  {
    i();
    invalidate();
  }

  public final void d()
  {
    this.r = CoverLoadingLayer.Status.PENDING;
    invalidate();
  }

  public final void e()
  {
    this.r = CoverLoadingLayer.Status.PREPARE;
    invalidate();
  }

  public final void f()
  {
    this.r = CoverLoadingLayer.Status.DOWNLOADED;
    invalidate();
  }

  public final boolean g()
  {
    return (this.s != null) && (this.s.d());
  }

  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int i1 = getWidth();
    getHeight();
    if (this.f == -1.0F)
      this.f = (0.1F * i1);
    if (this.r == CoverLoadingLayer.Status.NONE);
    Canvas localCanvas1;
    Paint localPaint1;
    int i4;
    int i5;
    Paint localPaint2;
    do
    {
      return;
      if (this.r == CoverLoadingLayer.Status.DOWNLOADED)
      {
        paramCanvas.save();
        paramCanvas.translate(getWidth() - this.t, 0.0F);
        ShapeDrawable localShapeDrawable3 = new ShapeDrawable(new p(this.f));
        localShapeDrawable3.setBounds(0, 0, (int)this.t, (int)this.t);
        localShapeDrawable3.getPaint().setColor(this.u);
        localShapeDrawable3.draw(paramCanvas);
        paramCanvas.restore();
        return;
      }
      new Paint().setColor(-65536);
      new Paint().setColor(-16711936);
      Bitmap localBitmap1 = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
      localBitmap1.eraseColor(0);
      localCanvas1 = new Canvas(localBitmap1);
      localPaint1 = new Paint();
      localPaint1.setColor(getResources().getColor(17170445));
      localPaint1.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
      localPaint1.setAntiAlias(true);
      int i2 = getWidth();
      int i3 = getHeight();
      localCanvas1.drawColor(this.a);
      i4 = i2 / 2;
      i5 = i3 / 2;
      localCanvas1.drawCircle(i4, i5, this.b, localPaint1);
      localPaint2 = new Paint(1);
      localPaint2.setAntiAlias(true);
      localPaint2.setColor(this.a);
      RectF localRectF1 = new RectF(i4 - this.c, i5 - this.c, i4 + this.c, i5 + this.c);
      if (this.r == CoverLoadingLayer.Status.PROGRESS)
        localCanvas1.drawArc(localRectF1, this.g, 270 - this.g, true, localPaint2);
      if (this.f != 0.0F)
      {
        Path localPath = new Path();
        localPath.addRoundRect(new RectF(0.0F, 0.0F, getWidth(), getHeight()), this.f, this.f, Path.Direction.CCW);
        paramCanvas.clipPath(localPath);
      }
      if ((this.r == CoverLoadingLayer.Status.PENDING) || (this.r == CoverLoadingLayer.Status.PREPARE))
      {
        localCanvas1.drawCircle(getWidth() / 2, getHeight() / 2, this.n, localPaint2);
        Paint localPaint3 = new Paint(1);
        localPaint3.setColor(getResources().getColor(2131427386));
        float f1 = this.n - this.e;
        localPaint3.setStrokeWidth(f1);
        localPaint3.setStyle(Paint.Style.STROKE);
        localCanvas1.drawCircle(getWidth() / 2, getHeight() / 2, this.e + f1 / 2.0F, localPaint3);
        localCanvas1.save();
        localCanvas1.translate(getWidth() / 2 - b(1.5F), getHeight() / 2 - b(5.0F));
        ShapeDrawable localShapeDrawable1 = new ShapeDrawable(new RoundRectShape(new float[] { 1.0F, 1.0F, 1.0F, 1.0F, 0.0F, 0.0F, 0.0F, 0.0F }, null, null));
        localShapeDrawable1.setBounds(0, 0, (int)b(2.0F), (int)b(7.0F));
        localShapeDrawable1.getPaint().setColor(localPaint3.getColor());
        localShapeDrawable1.draw(localCanvas1);
        ShapeDrawable localShapeDrawable2 = new ShapeDrawable(new RoundRectShape(new float[] { 0.0F, 0.0F, 1.0F, 1.0F, 1.0F, 1.0F, 0.0F, 0.0F }, null, null));
        localShapeDrawable2.setBounds((int)b(2.0F), (int)b(5.0F), (int)b(6.0F), (int)b(7.0F));
        localShapeDrawable2.getPaint().setColor(localPaint3.getColor());
        localShapeDrawable2.draw(localCanvas1);
        localCanvas1.restore();
      }
      paramCanvas.drawBitmap(localBitmap1, 0.0F, 0.0F, null);
    }
    while ((this.r != CoverLoadingLayer.Status.PAUSE) || (2.0F * this.d <= 1.0F));
    localCanvas1.drawCircle(i4, i5, this.d, localPaint1);
    Bitmap localBitmap2 = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
    Canvas localCanvas2 = new Canvas(localBitmap2);
    localCanvas2.drawCircle(i4, i5, this.d, localPaint2);
    Paint localPaint4 = new Paint();
    localPaint4.setColor(-1);
    int i6 = (int)(i4 - this.j / 2.0F - this.i / 2.0F);
    RectF localRectF2 = new RectF();
    localRectF2.left = (i6 - this.i / 2.0F);
    localRectF2.right = (i6 + this.i / 2.0F);
    localRectF2.top = (i5 - this.h / 2.0F);
    localRectF2.bottom = (i5 + this.h / 2.0F);
    localCanvas2.drawRoundRect(localRectF2, 1.0F, 1.0F, localPaint4);
    int i7 = (int)(i4 + this.j / 2.0F + this.i / 2.0F);
    RectF localRectF3 = new RectF();
    localRectF3.left = (i7 - this.i / 2.0F);
    localRectF3.right = (i7 + this.i / 2.0F);
    localRectF3.top = (i5 - this.h / 2.0F);
    localRectF3.bottom = (i5 + this.h / 2.0F);
    localCanvas2.drawRoundRect(localRectF3, 1.0F, 1.0F, localPaint4);
    paramCanvas.drawBitmap(localBitmap2, 0.0F, 0.0F, null);
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i2;
    if (paramMotionEvent.getAction() == 1)
    {
      int i1;
      if ((!g()) && (!j()))
      {
        if ((this.m == null) || (!this.m.d()))
          break label85;
        i2 = 1;
        i1 = 0;
        if (i2 == 0);
      }
      else
      {
        i1 = 1;
      }
      if (i1 == 0)
      {
        if (this.r != CoverLoadingLayer.Status.PROGRESS)
          break label90;
        b();
        if (this.q != null)
          this.q.a();
      }
    }
    label85: label90: 
    do
    {
      do
      {
        do
        {
          return true;
          i2 = 0;
          break;
          if (this.r != CoverLoadingLayer.Status.PAUSE)
            break label134;
          this.d = 0.0F;
          this.r = CoverLoadingLayer.Status.PROGRESS;
          invalidate();
        }
        while (this.q == null);
        this.q.b();
        return true;
      }
      while (this.r != CoverLoadingLayer.Status.PENDING);
      b();
    }
    while (this.q == null);
    label134: this.q.c();
    return true;
  }

  public void setCornerRadius(float paramFloat)
  {
    this.f = paramFloat;
  }

  public void setCoverListener(y paramy)
  {
    this.q = paramy;
  }

  public void setProgress(int paramInt)
  {
    int i1 = 1;
    if (a(paramInt));
    while (true)
    {
      return;
      if (paramInt < this.o)
      {
        clearAnimation();
        if (a(paramInt))
          continue;
        this.o = paramInt;
        this.g = a(this.o);
        this.r = CoverLoadingLayer.Status.PROGRESS;
        invalidate();
        if (!a())
          continue;
        h().a();
        return;
      }
      this.r = CoverLoadingLayer.Status.PROGRESS;
      int i2 = this.o;
      this.o = paramInt;
      if (this.m != null)
        this.m.b();
      this.d = 0.0F;
      int[] arrayOfInt = new int[2];
      arrayOfInt[0] = a(i2);
      arrayOfInt[i1] = a(paramInt);
      com.c.a.w localw = com.c.a.w.a(arrayOfInt);
      localw.a(300L);
      localw.a(this.y);
      localw.a(new q(this));
      this.m = localw;
      if ((this.k != null) && (this.k.d()));
      while ((i1 == 0) && (!j()))
      {
        this.m.a();
        return;
        i1 = 0;
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.CoverLoadingLayer
 * JD-Core Version:    0.6.0
 */