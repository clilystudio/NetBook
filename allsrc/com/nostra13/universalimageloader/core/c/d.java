package com.nostra13.universalimageloader.core.c;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.nostra13.universalimageloader.core.assist.ViewScaleType;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

public abstract class d
  implements a
{
  protected Reference<View> a;
  private boolean b;

  public d(View paramView)
  {
    this(paramView, true);
  }

  private d(View paramView, boolean paramBoolean)
  {
    if (paramView == null)
      throw new IllegalArgumentException("view must not be null");
    this.a = new WeakReference(paramView);
    this.b = true;
  }

  public int a()
  {
    View localView = (View)this.a.get();
    ViewGroup.LayoutParams localLayoutParams;
    if (localView != null)
    {
      localLayoutParams = localView.getLayoutParams();
      if ((!this.b) || (localLayoutParams == null) || (localLayoutParams.width == -2))
        break label62;
    }
    label62: for (int i = localView.getWidth(); ; i = 0)
    {
      if ((i <= 0) && (localLayoutParams != null))
        i = localLayoutParams.width;
      return i;
      return 0;
    }
  }

  protected abstract void a(Bitmap paramBitmap, View paramView);

  protected abstract void a(Drawable paramDrawable, View paramView);

  public final boolean a(Bitmap paramBitmap)
  {
    if (Looper.myLooper() == Looper.getMainLooper())
    {
      View localView = (View)this.a.get();
      if (localView != null)
      {
        a(paramBitmap, localView);
        return true;
      }
    }
    else
    {
      com.nostra13.universalimageloader.b.d.c("Can't set a bitmap into view. You should call ImageLoader on UI thread for it.", new Object[0]);
    }
    return false;
  }

  public final boolean a(Drawable paramDrawable)
  {
    if (Looper.myLooper() == Looper.getMainLooper())
    {
      View localView = (View)this.a.get();
      if (localView != null)
      {
        a(paramDrawable, localView);
        return true;
      }
    }
    else
    {
      com.nostra13.universalimageloader.b.d.c("Can't set a drawable into view. You should call ImageLoader on UI thread for it.", new Object[0]);
    }
    return false;
  }

  public int b()
  {
    View localView = (View)this.a.get();
    ViewGroup.LayoutParams localLayoutParams;
    if (localView != null)
    {
      localLayoutParams = localView.getLayoutParams();
      if ((!this.b) || (localLayoutParams == null) || (localLayoutParams.height == -2))
        break label62;
    }
    label62: for (int i = localView.getHeight(); ; i = 0)
    {
      if ((i <= 0) && (localLayoutParams != null))
        i = localLayoutParams.height;
      return i;
      return 0;
    }
  }

  public ViewScaleType c()
  {
    return ViewScaleType.CROP;
  }

  public View d()
  {
    return (View)this.a.get();
  }

  public final boolean e()
  {
    return this.a.get() == null;
  }

  public final int f()
  {
    View localView = (View)this.a.get();
    if (localView == null)
      return super.hashCode();
    return localView.hashCode();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.core.c.d
 * JD-Core Version:    0.6.0
 */