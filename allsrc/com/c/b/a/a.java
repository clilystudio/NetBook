package com.c.b.a;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Build.VERSION;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

public final class a extends Animation
{
  private static final WeakHashMap<View, a> a;
  private final WeakReference<View> b;
  private final Camera c = new Camera();
  private float d = 1.0F;
  private float e;
  private float f;
  private float g;
  private float h = 1.0F;
  private float i = 1.0F;
  private float j;
  private float k;
  private final RectF l = new RectF();
  private final RectF m = new RectF();
  private final Matrix n = new Matrix();

  static
  {
    Integer.valueOf(Build.VERSION.SDK).intValue();
    a = new WeakHashMap();
  }

  private a(View paramView)
  {
    setDuration(0L);
    setFillAfter(true);
    paramView.setAnimation(this);
    this.b = new WeakReference(paramView);
  }

  public static a a(View paramView)
  {
    a locala = (a)a.get(paramView);
    if ((locala == null) || (locala != paramView.getAnimation()))
    {
      locala = new a(paramView);
      a.put(paramView, locala);
    }
    return locala;
  }

  private void a(Matrix paramMatrix, View paramView)
  {
    float f1 = paramView.getWidth();
    float f2 = paramView.getHeight();
    float f3 = f1 / 2.0F;
    float f4 = f2 / 2.0F;
    float f5 = this.e;
    float f6 = this.f;
    float f7 = this.g;
    if ((f5 != 0.0F) || (f6 != 0.0F) || (f7 != 0.0F))
    {
      Camera localCamera = this.c;
      localCamera.save();
      localCamera.rotateX(f5);
      localCamera.rotateY(f6);
      localCamera.rotateZ(-f7);
      localCamera.getMatrix(paramMatrix);
      localCamera.restore();
      paramMatrix.preTranslate(-f3, -f4);
      paramMatrix.postTranslate(f3, f4);
    }
    float f8 = this.h;
    float f9 = this.i;
    if ((f8 != 1.0F) || (f9 != 1.0F))
    {
      paramMatrix.postScale(f8, f9);
      paramMatrix.postTranslate(-(f3 / f1) * (f8 * f1 - f1), -(f4 / f2) * (f9 * f2 - f2));
    }
    paramMatrix.postTranslate(this.j, this.k);
  }

  private void a(RectF paramRectF, View paramView)
  {
    paramRectF.set(0.0F, 0.0F, paramView.getWidth(), paramView.getHeight());
    Matrix localMatrix = this.n;
    localMatrix.reset();
    a(localMatrix, paramView);
    this.n.mapRect(paramRectF);
    paramRectF.offset(paramView.getLeft(), paramView.getTop());
    if (paramRectF.right < paramRectF.left)
    {
      float f2 = paramRectF.right;
      paramRectF.right = paramRectF.left;
      paramRectF.left = f2;
    }
    if (paramRectF.bottom < paramRectF.top)
    {
      float f1 = paramRectF.top;
      paramRectF.top = paramRectF.bottom;
      paramRectF.bottom = f1;
    }
  }

  private void k()
  {
    View localView = (View)this.b.get();
    if (localView != null)
      a(this.l, localView);
  }

  private void l()
  {
    View localView = (View)this.b.get();
    if ((localView == null) || (localView.getParent() == null))
      return;
    RectF localRectF = this.m;
    a(localRectF, localView);
    localRectF.union(this.l);
    ((View)localView.getParent()).invalidate((int)Math.floor(localRectF.left), (int)Math.floor(localRectF.top), (int)Math.ceil(localRectF.right), (int)Math.ceil(localRectF.bottom));
  }

  public final float a()
  {
    return this.d;
  }

  public final void a(float paramFloat)
  {
    if (this.d != paramFloat)
    {
      this.d = paramFloat;
      View localView = (View)this.b.get();
      if (localView != null)
        localView.invalidate();
    }
  }

  protected final void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    View localView = (View)this.b.get();
    if (localView != null)
    {
      paramTransformation.setAlpha(this.d);
      a(paramTransformation.getMatrix(), localView);
    }
  }

  public final float b()
  {
    return this.g;
  }

  public final void b(float paramFloat)
  {
    if (this.g != paramFloat)
    {
      k();
      this.g = paramFloat;
      l();
    }
  }

  public final float c()
  {
    return this.e;
  }

  public final void c(float paramFloat)
  {
    if (this.e != paramFloat)
    {
      k();
      this.e = paramFloat;
      l();
    }
  }

  public final float d()
  {
    return this.f;
  }

  public final void d(float paramFloat)
  {
    if (this.f != paramFloat)
    {
      k();
      this.f = paramFloat;
      l();
    }
  }

  public final float e()
  {
    return this.h;
  }

  public final void e(float paramFloat)
  {
    if (this.h != paramFloat)
    {
      k();
      this.h = paramFloat;
      l();
    }
  }

  public final float f()
  {
    return this.i;
  }

  public final void f(float paramFloat)
  {
    if (this.i != paramFloat)
    {
      k();
      this.i = paramFloat;
      l();
    }
  }

  public final float g()
  {
    return this.j;
  }

  public final void g(float paramFloat)
  {
    if (this.j != paramFloat)
    {
      k();
      this.j = paramFloat;
      l();
    }
  }

  public final float h()
  {
    return this.k;
  }

  public final void h(float paramFloat)
  {
    if (this.k != paramFloat)
    {
      k();
      this.k = paramFloat;
      l();
    }
  }

  public final float i()
  {
    View localView = (View)this.b.get();
    if (localView == null)
      return 0.0F;
    return localView.getLeft() + this.j;
  }

  public final void i(float paramFloat)
  {
    View localView = (View)this.b.get();
    if (localView != null)
      g(paramFloat - localView.getLeft());
  }

  public final float j()
  {
    View localView = (View)this.b.get();
    if (localView == null)
      return 0.0F;
    return localView.getTop() + this.k;
  }

  public final void j(float paramFloat)
  {
    View localView = (View)this.b.get();
    if (localView != null)
      h(paramFloat - localView.getTop());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.c.b.a.a
 * JD-Core Version:    0.6.0
 */