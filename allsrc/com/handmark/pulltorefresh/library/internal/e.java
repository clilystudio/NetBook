package com.handmark.pulltorefresh.library.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v7.internal.widget.Y;
import android.util.AttributeSet;
import android.view.View;

public class e
{
  private final Context a;
  private final TypedArray b;
  private Y c;

  private e(Context paramContext, TypedArray paramTypedArray)
  {
    this.a = paramContext;
    this.b = paramTypedArray;
  }

  public static e a(Context paramContext, AttributeSet paramAttributeSet, int[] paramArrayOfInt)
  {
    return new e(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, paramArrayOfInt));
  }

  public static e a(Context paramContext, AttributeSet paramAttributeSet, int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    return new e(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, paramArrayOfInt, paramInt1, 0));
  }

  public static void a(View paramView, Runnable paramRunnable)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      paramView.postOnAnimation(paramRunnable);
      return;
    }
    paramView.postDelayed(paramRunnable, 16L);
  }

  public float a(int paramInt, float paramFloat)
  {
    return this.b.getFloat(paramInt, -1.0F);
  }

  public int a()
  {
    return this.b.length();
  }

  public int a(int paramInt1, int paramInt2)
  {
    return this.b.getInt(paramInt1, paramInt2);
  }

  public Drawable a(int paramInt)
  {
    if (this.b.hasValue(paramInt))
    {
      int i = this.b.getResourceId(paramInt, 0);
      if (i != 0)
        return c().a(i);
    }
    return this.b.getDrawable(paramInt);
  }

  public boolean a(int paramInt, boolean paramBoolean)
  {
    return this.b.getBoolean(paramInt, paramBoolean);
  }

  public int b(int paramInt1, int paramInt2)
  {
    return this.b.getInteger(paramInt1, paramInt2);
  }

  public Drawable b(int paramInt)
  {
    if (this.b.hasValue(paramInt))
    {
      int i = this.b.getResourceId(paramInt, 0);
      if (i != 0)
        return c().a(i, true);
    }
    return null;
  }

  public void b()
  {
    this.b.recycle();
  }

  public int c(int paramInt1, int paramInt2)
  {
    return this.b.getDimensionPixelOffset(paramInt1, paramInt2);
  }

  public Y c()
  {
    if (this.c == null)
      this.c = Y.a(this.a);
    return this.c;
  }

  public CharSequence c(int paramInt)
  {
    return this.b.getText(paramInt);
  }

  public int d(int paramInt1, int paramInt2)
  {
    return this.b.getDimensionPixelSize(paramInt1, paramInt2);
  }

  public String d(int paramInt)
  {
    return this.b.getString(paramInt);
  }

  public int e(int paramInt1, int paramInt2)
  {
    return this.b.getLayoutDimension(paramInt1, paramInt2);
  }

  public boolean e(int paramInt)
  {
    return this.b.hasValue(paramInt);
  }

  public int f(int paramInt1, int paramInt2)
  {
    return this.b.getResourceId(paramInt1, paramInt2);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.handmark.pulltorefresh.library.internal.e
 * JD-Core Version:    0.6.0
 */