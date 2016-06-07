package android.support.design.widget;

import android.support.v4.view.MotionEventCompat;
import android.support.v4.widget.ViewDragHelper;
import android.support.v4.widget.ViewDragHelper.Callback;
import android.view.MotionEvent;
import android.view.View;
import com.xiaomi.mistatistic.sdk.a.r;

public class ad<V extends View> extends r<V>
{
  private ViewDragHelper a;
  private af b;
  private boolean c;
  private float d = 0.0F;
  private int e = 2;
  private float f = 0.5F;
  private float g = 0.0F;
  private float h = 0.5F;
  private final ViewDragHelper.Callback i = new ae(this);

  private static float b(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return Math.min(Math.max(paramFloat1, paramFloat2), paramFloat3);
  }

  public final int a()
  {
    if (this.a != null)
      return this.a.getViewDragState();
    return 0;
  }

  public final void a(float paramFloat)
  {
    this.g = b(0.0F, 0.1F, 1.0F);
  }

  public final void a(int paramInt)
  {
    this.e = 0;
  }

  public final void a(af paramaf)
  {
    this.b = paramaf;
  }

  public boolean a(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent)
  {
    switch (MotionEventCompat.getActionMasked(paramMotionEvent))
    {
    case 2:
    default:
      if (paramCoordinatorLayout.a(paramV, (int)paramMotionEvent.getX(), (int)paramMotionEvent.getY()))
        break;
    case 1:
    case 3:
    }
    for (boolean bool = true; ; bool = false)
    {
      this.c = bool;
      do
      {
        if (!this.c)
          break;
        return false;
      }
      while (!this.c);
      this.c = false;
      return false;
    }
    if (this.a == null)
      this.a = ViewDragHelper.create(paramCoordinatorLayout, this.i);
    return this.a.shouldInterceptTouchEvent(paramMotionEvent);
  }

  public final boolean a(MotionEvent paramMotionEvent)
  {
    if (this.a != null)
    {
      this.a.processTouchEvent(paramMotionEvent);
      return true;
    }
    return false;
  }

  public final void b(float paramFloat)
  {
    this.h = b(0.0F, 0.6F, 1.0F);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.ad
 * JD-Core Version:    0.6.0
 */