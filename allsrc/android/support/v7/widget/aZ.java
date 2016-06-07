package android.support.v7.widget;

import android.content.Context;
import android.support.v7.app.b;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;

public final class aZ extends b
{
  int b = 0;

  public aZ(int paramInt1, int paramInt2)
  {
    super(-2, -2);
    this.a = 8388627;
  }

  public aZ(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public aZ(b paramb)
  {
    super(paramb);
  }

  public aZ(aZ paramaZ)
  {
    super(paramaZ);
    this.b = paramaZ.b;
  }

  public aZ(ViewGroup.LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }

  public aZ(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
  {
    super(paramMarginLayoutParams);
    this.leftMargin = paramMarginLayoutParams.leftMargin;
    this.topMargin = paramMarginLayoutParams.topMargin;
    this.rightMargin = paramMarginLayoutParams.rightMargin;
    this.bottomMargin = paramMarginLayoutParams.bottomMargin;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.aZ
 * JD-Core Version:    0.6.0
 */