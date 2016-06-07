package com.clilystudio.netbook.util;

import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.ap;
import android.support.v7.widget.ar;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;

public class D extends LinearLayoutManager
{
  private int[] d = new int[2];

  static
  {
    D.class.getSimpleName();
  }

  public D(Context paramContext)
  {
    super(paramContext);
  }

  public final void a(ar paramar, int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getMode(paramInt1);
    int j = View.MeasureSpec.getMode(paramInt2);
    int k = View.MeasureSpec.getSize(paramInt1);
    int m = View.MeasureSpec.getSize(paramInt2);
    int n = 0;
    int i1 = 0;
    int i2 = 0;
    if (i2 < o())
    {
      int i3 = View.MeasureSpec.makeMeasureSpec(i2, 0);
      int i4 = View.MeasureSpec.makeMeasureSpec(i2, 0);
      int[] arrayOfInt = this.d;
      while (true)
      {
        try
        {
          View localView = paramar.b(0);
          if (localView == null)
            continue;
          ap localap = (ap)localView.getLayoutParams();
          localView.measure(ViewGroup.getChildMeasureSpec(i3, k() + m(), localap.width), ViewGroup.getChildMeasureSpec(i4, l() + n(), localap.height));
          arrayOfInt[0] = (localView.getMeasuredWidth() + localap.leftMargin + localap.rightMargin);
          arrayOfInt[1] = (localView.getMeasuredHeight() + localap.bottomMargin + localap.topMargin);
          paramar.a(localView);
          if (e() == 0)
          {
            n += this.d[0];
            if (i2 != 0)
              continue;
            i1 = this.d[1];
            i2++;
            break;
          }
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
          continue;
        }
        finally
        {
        }
        i1 += this.d[1];
        if (i2 != 0)
          continue;
        n = this.d[0];
      }
    }
    switch (i)
    {
    default:
      switch (j)
      {
      default:
      case 1073741824:
      }
    case 1073741824:
    }
    while (true)
    {
      e(n, i1);
      return;
      n = k;
      break;
      i1 = m;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.util.D
 * JD-Core Version:    0.6.0
 */