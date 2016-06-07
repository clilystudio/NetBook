package com.nostra13.universalimageloader.core.c;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import com.nostra13.universalimageloader.core.assist.ViewScaleType;
import java.lang.ref.Reference;
import java.lang.reflect.Field;

public final class b extends d
{
  public b(ImageView paramImageView)
  {
    super(paramImageView);
  }

  private static int a(Object paramObject, String paramString)
  {
    try
    {
      Field localField = ImageView.class.getDeclaredField(paramString);
      localField.setAccessible(true);
      int i = ((Integer)localField.get(paramObject)).intValue();
      if ((i > 0) && (i < 2147483647))
        return i;
    }
    catch (Exception localException)
    {
      com.nostra13.universalimageloader.b.d.a(localException);
    }
    return 0;
  }

  public final int a()
  {
    int i = super.a();
    if (i <= 0)
    {
      ImageView localImageView = (ImageView)this.a.get();
      if (localImageView != null)
        return a(localImageView, "mMaxWidth");
    }
    return i;
  }

  protected final void a(Bitmap paramBitmap, View paramView)
  {
    ((ImageView)paramView).setImageBitmap(paramBitmap);
  }

  protected final void a(Drawable paramDrawable, View paramView)
  {
    ((ImageView)paramView).setImageDrawable(paramDrawable);
  }

  public final int b()
  {
    int i = super.b();
    if (i <= 0)
    {
      ImageView localImageView = (ImageView)this.a.get();
      if (localImageView != null)
        return a(localImageView, "mMaxHeight");
    }
    return i;
  }

  public final ViewScaleType c()
  {
    ImageView localImageView = (ImageView)this.a.get();
    if (localImageView != null)
      return ViewScaleType.fromImageView(localImageView);
    return super.c();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.core.c.b
 * JD-Core Version:    0.6.0
 */