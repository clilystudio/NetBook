package android.support.v7.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v7.appcompat.R.styleable;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;

public class b extends ViewGroup.MarginLayoutParams
{
  public int a = 0;

  public b(int paramInt1, int paramInt2)
  {
    super(paramInt1, paramInt2);
    this.a = 8388627;
  }

  public b(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.ActionBarLayout);
    this.a = localTypedArray.getInt(R.styleable.ActionBarLayout_android_layout_gravity, 0);
    localTypedArray.recycle();
  }

  public b(b paramb)
  {
    super(paramb);
    this.a = paramb.a;
  }

  public b(ViewGroup.LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.app.b
 * JD-Core Version:    0.6.0
 */