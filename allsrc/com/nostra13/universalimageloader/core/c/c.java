package com.nostra13.universalimageloader.core.c;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import com.nostra13.universalimageloader.core.assist.ViewScaleType;

public final class c
  implements a
{
  private String a;
  private com.nostra13.universalimageloader.core.assist.c b;
  private ViewScaleType c;

  public c(String paramString, com.nostra13.universalimageloader.core.assist.c paramc, ViewScaleType paramViewScaleType)
  {
    if (paramc == null)
      throw new IllegalArgumentException("imageSize must not be null");
    if (paramViewScaleType == null)
      throw new IllegalArgumentException("scaleType must not be null");
    this.a = paramString;
    this.b = paramc;
    this.c = paramViewScaleType;
  }

  public final int a()
  {
    return this.b.a();
  }

  public final boolean a(Bitmap paramBitmap)
  {
    return true;
  }

  public final boolean a(Drawable paramDrawable)
  {
    return true;
  }

  public final int b()
  {
    return this.b.b();
  }

  public final ViewScaleType c()
  {
    return this.c;
  }

  public final View d()
  {
    return null;
  }

  public final boolean e()
  {
    return false;
  }

  public final int f()
  {
    if (TextUtils.isEmpty(this.a))
      return super.hashCode();
    return this.a.hashCode();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.core.c.c
 * JD-Core Version:    0.6.0
 */