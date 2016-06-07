package uk.co.senab.photoview;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.design.widget.K;
import android.util.DisplayMetrics;
import android.util.FloatMath;
import android.util.Log;
import android.view.GestureDetector;
import android.view.GestureDetector.OnDoubleTapListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnLongClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import java.io.PrintStream;
import java.lang.ref.WeakReference;
import uk.co.senab.photoview.a.c;
import uk.co.senab.photoview.a.f;

public final class d
  implements View.OnTouchListener, ViewTreeObserver.OnGlobalLayoutListener, f, b
{
  static final Interpolator a = new AccelerateDecelerateInterpolator();
  private int A = 2;
  private boolean B;
  private ImageView.ScaleType C = ImageView.ScaleType.FIT_CENTER;
  int b = 200;
  public float c;
  public float d;
  private final float e;
  private float f = 1.0F;
  private float g = 1.75F;
  private float h = 3.0F;
  private boolean i = true;
  private WeakReference<ImageView> j;
  private GestureDetector k;
  private uk.co.senab.photoview.a.e l;
  private final Matrix m = new Matrix();
  private final Matrix n = new Matrix();
  private final Matrix o = new Matrix();
  private final RectF p = new RectF();
  private final float[] q = new float[9];
  private K r;
  private K s;
  private K t;
  private View.OnLongClickListener u;
  private int v;
  private int w;
  private int x;
  private int y;
  private h z;

  public d(ImageView paramImageView)
  {
    this.j = new WeakReference(paramImageView);
    this.e = (300.0F * paramImageView.getContext().getResources().getDisplayMetrics().density);
    paramImageView.setDrawingCacheEnabled(true);
    paramImageView.setOnTouchListener(this);
    ViewTreeObserver localViewTreeObserver = paramImageView.getViewTreeObserver();
    if (localViewTreeObserver != null)
      localViewTreeObserver.addOnGlobalLayoutListener(this);
    a(paramImageView);
    if (paramImageView.isInEditMode())
      return;
    Context localContext = paramImageView.getContext();
    int i1 = Build.VERSION.SDK_INT;
    Object localObject;
    if (i1 < 5)
      localObject = new uk.co.senab.photoview.a.a(localContext);
    while (true)
    {
      ((uk.co.senab.photoview.a.e)localObject).a(this);
      this.l = ((uk.co.senab.photoview.a.e)localObject);
      this.k = new GestureDetector(paramImageView.getContext(), new e(this));
      this.k.setOnDoubleTapListener(new a(this));
      b(true);
      return;
      if (i1 < 8)
      {
        localObject = new uk.co.senab.photoview.a.b(localContext);
        continue;
      }
      localObject = new c(localContext);
    }
  }

  private float a(Matrix paramMatrix, int paramInt)
  {
    paramMatrix.getValues(this.q);
    return this.q[paramInt];
  }

  private RectF a(Matrix paramMatrix)
  {
    ImageView localImageView = c();
    if (localImageView != null)
    {
      Drawable localDrawable = localImageView.getDrawable();
      if (localDrawable != null)
      {
        this.p.set(0.0F, 0.0F, localDrawable.getIntrinsicWidth(), localDrawable.getIntrinsicHeight());
        paramMatrix.mapRect(this.p);
        return this.p;
      }
    }
    return null;
  }

  private void a(Drawable paramDrawable)
  {
    ImageView localImageView = c();
    if ((localImageView == null) || (paramDrawable == null))
      return;
    float f1 = b(localImageView);
    float f2 = c(localImageView);
    int i1 = paramDrawable.getIntrinsicWidth();
    int i2 = paramDrawable.getIntrinsicHeight();
    this.m.reset();
    float f3 = f1 / i1;
    float f4 = f2 / i2;
    if (this.C == ImageView.ScaleType.CENTER)
      this.m.postTranslate((f1 - i1) / 2.0F, (f2 - i2) / 2.0F);
    while (true)
    {
      p();
      return;
      if (this.C == ImageView.ScaleType.CENTER_CROP)
      {
        float f6 = Math.max(f3, f4);
        this.m.postScale(f6, f6);
        this.m.postTranslate((f1 - f6 * i1) / 2.0F, (f2 - f6 * i2) / 2.0F);
        continue;
      }
      if (this.C == ImageView.ScaleType.CENTER_INSIDE)
      {
        float f5 = Math.min(1.0F, Math.min(f3, f4));
        this.m.postScale(f5, f5);
        this.m.postTranslate((f1 - f5 * i1) / 2.0F, (f2 - f5 * i2) / 2.0F);
        continue;
      }
      RectF localRectF1 = new RectF(0.0F, 0.0F, i1, i2);
      RectF localRectF2 = new RectF(0.0F, 0.0F, f1, f2);
      switch (f.a[this.C.ordinal()])
      {
      default:
        break;
      case 2:
        this.m.setRectToRect(localRectF1, localRectF2, Matrix.ScaleToFit.START);
        break;
      case 4:
        this.m.setRectToRect(localRectF1, localRectF2, Matrix.ScaleToFit.CENTER);
        break;
      case 3:
        this.m.setRectToRect(localRectF1, localRectF2, Matrix.ScaleToFit.END);
        break;
      case 5:
        this.m.setRectToRect(localRectF1, localRectF2, Matrix.ScaleToFit.FILL);
      }
    }
  }

  private static void a(ImageView paramImageView)
  {
    if ((paramImageView != null) && (!(paramImageView instanceof b)) && (!ImageView.ScaleType.MATRIX.equals(paramImageView.getScaleType())))
      paramImageView.setScaleType(ImageView.ScaleType.MATRIX);
  }

  private static int b(ImageView paramImageView)
  {
    if (paramImageView == null)
      return 0;
    return paramImageView.getWidth() - paramImageView.getPaddingLeft() - paramImageView.getPaddingRight();
  }

  private static void b(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    if (paramFloat1 >= paramFloat2)
      throw new IllegalArgumentException("MinZoom has to be less than MidZoom");
    if (paramFloat2 >= paramFloat3)
      throw new IllegalArgumentException("MidZoom has to be less than MaxZoom");
  }

  private void b(Matrix paramMatrix)
  {
    ImageView localImageView1 = c();
    if (localImageView1 != null)
    {
      ImageView localImageView2 = c();
      if ((localImageView2 != null) && (!(localImageView2 instanceof b)) && (!ImageView.ScaleType.MATRIX.equals(localImageView2.getScaleType())))
        throw new IllegalStateException("The ImageView's ScaleType has been changed since attaching a PhotoViewAttacher");
      localImageView1.setImageMatrix(paramMatrix);
      if (this.r != null)
        a(paramMatrix);
    }
  }

  private static int c(ImageView paramImageView)
  {
    if (paramImageView == null)
      return 0;
    return paramImageView.getHeight() - paramImageView.getPaddingTop() - paramImageView.getPaddingBottom();
  }

  private void m()
  {
    if (this.z != null)
    {
      this.z.a();
      this.z = null;
    }
  }

  private void n()
  {
    if (o())
      b(l());
  }

  private boolean o()
  {
    ImageView localImageView = c();
    if (localImageView == null);
    RectF localRectF;
    do
    {
      return false;
      localRectF = a(l());
    }
    while (localRectF == null);
    float f1 = localRectF.height();
    float f2 = localRectF.width();
    int i1 = c(localImageView);
    int i2;
    if (f1 <= i1)
      switch (f.a[this.C.ordinal()])
      {
      default:
        i2 = b(localImageView);
        System.out.println("rect = " + localRectF);
        if (f2 > i2)
          break;
        switch (f.a[this.C.ordinal()])
        {
        default:
          label165: this.A = 2;
        case 2:
        case 3:
        }
      case 2:
      case 3:
      }
    while (true)
    {
      System.out.println("deltaX = " + 0.0F);
      this.o.postTranslate(0.0F, 0.0F);
      return true;
      break;
      break;
      if (localRectF.top > 0.0F)
      {
        float f6 = (i1 - this.e) / 2.0F;
        if (localRectF.top <= f6)
          break;
        break;
      }
      if (localRectF.bottom >= i1)
        break;
      float f3 = (i1 - this.e) / 2.0F;
      if (i1 - localRectF.bottom <= f3)
        break;
      break;
      break label165;
      break label165;
      if (localRectF.left > 0.0F)
      {
        this.A = 0;
        float f5 = (i2 - this.e) / 2.0F;
        System.out.println("rect = " + localRectF);
        if (localRectF.left <= f5)
          continue;
        continue;
      }
      if (localRectF.right < i2)
      {
        float f4 = (i2 - this.e) / 2.0F;
        if (i2 - localRectF.right > f4);
        this.A = 1;
        continue;
      }
      this.A = -1;
    }
  }

  private void p()
  {
    this.o.reset();
    b(l());
    o();
  }

  public final void a()
  {
    if (this.j == null)
      return;
    ImageView localImageView = (ImageView)this.j.get();
    if (localImageView != null)
    {
      ViewTreeObserver localViewTreeObserver = localImageView.getViewTreeObserver();
      if ((localViewTreeObserver != null) && (localViewTreeObserver.isAlive()))
        localViewTreeObserver.removeGlobalOnLayoutListener(this);
      localImageView.setOnTouchListener(null);
      m();
    }
    if (this.k != null)
      this.k.setOnDoubleTapListener(null);
    this.r = null;
    this.s = null;
    this.t = null;
    this.j = null;
  }

  public final void a(float paramFloat)
  {
    this.o.setRotate(paramFloat % 360.0F);
    n();
  }

  public final void a(float paramFloat1, float paramFloat2)
  {
    if (this.l.a());
    ViewParent localViewParent;
    do
      while (true)
      {
        return;
        uk.co.senab.photoview.b.b localb = uk.co.senab.photoview.b.a.a();
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Float.valueOf(paramFloat1);
        arrayOfObject[1] = Float.valueOf(paramFloat2);
        localb.a("PhotoViewAttacher", String.format("onDrag: dx: %.2f. dy: %.2f", arrayOfObject));
        ImageView localImageView = c();
        this.o.postTranslate(paramFloat1, paramFloat2);
        n();
        localViewParent = localImageView.getParent();
        if ((!this.i) || (this.l.a()))
          break;
        if (((this.A != 2) && ((this.A != 0) || (paramFloat1 < 1.0F)) && ((this.A != 1) || (paramFloat1 > -1.0F))) || (localViewParent == null))
          continue;
        localViewParent.requestDisallowInterceptTouchEvent(false);
        return;
      }
    while (localViewParent == null);
    localViewParent.requestDisallowInterceptTouchEvent(true);
  }

  public final void a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    uk.co.senab.photoview.b.b localb = uk.co.senab.photoview.b.a.a();
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Float.valueOf(paramFloat1);
    arrayOfObject[1] = Float.valueOf(paramFloat2);
    arrayOfObject[2] = Float.valueOf(paramFloat3);
    localb.a("PhotoViewAttacher", String.format("onScale: scale: %.2f. fX: %.2f. fY: %.2f", arrayOfObject));
    if ((g() < this.h) || (paramFloat1 < 1.0F))
    {
      this.o.postScale(paramFloat1, paramFloat1, paramFloat2, paramFloat3);
      n();
    }
  }

  public final void a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    uk.co.senab.photoview.b.a.a().a("PhotoViewAttacher", "onFling. sX: " + paramFloat1 + " sY: " + paramFloat2 + " Vx: " + paramFloat3 + " Vy: " + paramFloat4);
    ImageView localImageView = c();
    this.z = new h(this, localImageView.getContext());
    this.z.a(b(localImageView), c(localImageView), (int)paramFloat3, (int)paramFloat4);
  }

  public final void a(float paramFloat1, float paramFloat2, float paramFloat3, boolean paramBoolean)
  {
    ImageView localImageView = c();
    if (localImageView != null)
    {
      if ((paramFloat1 < this.f) || (paramFloat1 > this.h))
        uk.co.senab.photoview.b.a.a().b("PhotoViewAttacher", "Scale must be within the range of minScale and maxScale");
    }
    else
      return;
    if (paramBoolean)
    {
      localImageView.post(new g(this, g(), paramFloat1, paramFloat2, paramFloat3));
      return;
    }
    this.o.setScale(paramFloat1, paramFloat1, paramFloat2, paramFloat3);
    n();
  }

  public final void a(float paramFloat, boolean paramBoolean)
  {
    ImageView localImageView = c();
    if (localImageView != null)
      a(paramFloat, localImageView.getRight() / 2, localImageView.getBottom() / 2, paramBoolean);
  }

  public final void a(K paramK)
  {
    this.r = paramK;
  }

  public final void a(GestureDetector.OnDoubleTapListener paramOnDoubleTapListener)
  {
    if (paramOnDoubleTapListener != null)
    {
      this.k.setOnDoubleTapListener(paramOnDoubleTapListener);
      return;
    }
    this.k.setOnDoubleTapListener(new a(this));
  }

  public final void a(View.OnLongClickListener paramOnLongClickListener)
  {
    this.u = paramOnLongClickListener;
  }

  public final void a(ImageView.ScaleType paramScaleType)
  {
    if (paramScaleType == null);
    for (int i1 = 0; ; i1 = 1)
    {
      if ((i1 != 0) && (paramScaleType != this.C))
      {
        this.C = paramScaleType;
        k();
      }
      return;
      switch (f.a[paramScaleType.ordinal()])
      {
      default:
      case 1:
      }
    }
    throw new IllegalArgumentException(paramScaleType.name() + " is not supported in PhotoView");
  }

  public final void a(boolean paramBoolean)
  {
    this.i = paramBoolean;
  }

  public final RectF b()
  {
    o();
    return a(l());
  }

  public final void b(float paramFloat)
  {
    this.o.postRotate(paramFloat % 360.0F);
    n();
  }

  public final void b(K paramK)
  {
    this.s = paramK;
  }

  public final void b(boolean paramBoolean)
  {
    this.B = paramBoolean;
    k();
  }

  public final ImageView c()
  {
    WeakReference localWeakReference = this.j;
    ImageView localImageView = null;
    if (localWeakReference != null)
      localImageView = (ImageView)this.j.get();
    if (localImageView == null)
    {
      a();
      Log.i("PhotoViewAttacher", "ImageView no longer exists. You should not use this PhotoViewAttacher any more.");
    }
    return localImageView;
  }

  public final void c(float paramFloat)
  {
    b(paramFloat, this.g, this.h);
    this.f = paramFloat;
  }

  public final void c(K paramK)
  {
    this.t = paramK;
  }

  public final float d()
  {
    return this.f;
  }

  public final void d(float paramFloat)
  {
    this.f = paramFloat;
    this.g = (1.75F * paramFloat);
    this.h = (3.0F * paramFloat);
  }

  public final float e()
  {
    return this.g;
  }

  public final void e(float paramFloat)
  {
    b(this.f, paramFloat, this.h);
    this.g = paramFloat;
  }

  public final float f()
  {
    return this.h;
  }

  public final void f(float paramFloat)
  {
    b(this.f, this.g, paramFloat);
    this.h = paramFloat;
  }

  public final float g()
  {
    return FloatMath.sqrt((float)Math.pow(a(this.o, 0), 2.0D) + (float)Math.pow(a(this.o, 3), 2.0D));
  }

  public final ImageView.ScaleType h()
  {
    return this.C;
  }

  public final K i()
  {
    return this.s;
  }

  public final K j()
  {
    return this.t;
  }

  public final void k()
  {
    ImageView localImageView = c();
    if (localImageView != null)
    {
      if (this.B)
      {
        a(localImageView);
        a(localImageView.getDrawable());
      }
    }
    else
      return;
    p();
  }

  public final Matrix l()
  {
    this.n.set(this.m);
    this.n.postConcat(this.o);
    return this.n;
  }

  public final void onGlobalLayout()
  {
    ImageView localImageView = c();
    if (localImageView != null)
    {
      if (!this.B)
        break label103;
      int i1 = localImageView.getTop();
      int i2 = localImageView.getRight();
      int i3 = localImageView.getBottom();
      int i4 = localImageView.getLeft();
      if ((i1 != this.v) || (i3 != this.x) || (i4 != this.y) || (i2 != this.w))
      {
        a(localImageView.getDrawable());
        this.v = i1;
        this.w = i2;
        this.x = i3;
        this.y = i4;
      }
    }
    return;
    label103: a(localImageView.getDrawable());
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (this.B)
    {
      ImageView localImageView = (ImageView)paramView;
      int i1;
      ViewParent localViewParent;
      label72: int i2;
      if ((localImageView != null) && (localImageView.getDrawable() != null))
      {
        i1 = 1;
        if (i1 == 0)
          break label224;
        localViewParent = paramView.getParent();
        switch (paramMotionEvent.getAction())
        {
        case 2:
        default:
          i2 = 0;
        case 0:
        case 1:
        case 3:
        }
      }
      while (true)
      {
        if ((this.l != null) && (this.l.c(paramMotionEvent)))
          i2 = 1;
        if ((this.k != null) && (this.k.onTouchEvent(paramMotionEvent)))
          i2 = 1;
        return i2;
        i1 = 0;
        break;
        if (localViewParent != null)
          localViewParent.requestDisallowInterceptTouchEvent(true);
        while (true)
        {
          m();
          i2 = 0;
          break;
          Log.i("PhotoViewAttacher", "onTouch getParent() returned null");
        }
        if (g() >= this.f)
          break label72;
        RectF localRectF = b();
        if (localRectF == null)
          break label72;
        paramView.post(new g(this, g(), this.f, localRectF.centerX(), localRectF.centerY()));
        i2 = 1;
      }
    }
    label224: return false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     uk.co.senab.photoview.d
 * JD-Core Version:    0.6.0
 */