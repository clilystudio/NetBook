package com.clilystudio.netbook.reader;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint.FontMetrics;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.LinearInterpolator;
import android.widget.RelativeLayout.LayoutParams;
import com.arcsoft.hpay100.a.a;
import me.biubiubiu.justifytext.library.JustifyTextView;

public class AutoReaderTextView extends JustifyTextView
{
  private int c;
  private Context d;
  private int e = 5;
  private int f;
  private int g;
  private int[] h = { 100, 50, 35, 25, 20, 16, 14, 12, 11, 10 };
  private d i;
  private RelativeLayout.LayoutParams j;
  private boolean k = false;
  private Animation.AnimationListener l = new c(this);

  public AutoReaderTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.d = paramContext;
  }

  private Animation h()
  {
    b localb = new b(this);
    localb.setDuration(()(1000.0F * (this.g / this.f * this.h[(-1 + this.e)])));
    localb.setInterpolator(new LinearInterpolator());
    localb.setAnimationListener(this.l);
    return localb;
  }

  public final void a()
  {
    this.k = false;
    this.g = this.f;
    startAnimation(h());
  }

  public final void a(int paramInt)
  {
    this.j.height = paramInt;
    setLayoutParams(this.j);
  }

  public final void b()
  {
    this.j.height = this.f;
    setLayoutParams(this.j);
  }

  public final void c()
  {
    if (this.e < 10)
    {
      this.e = (1 + this.e);
      e();
    }
  }

  public final void d()
  {
    if (this.e > 1)
    {
      this.e = (-1 + this.e);
      e();
    }
  }

  public final void e()
  {
    this.k = false;
    this.g = getMeasuredHeight();
    startAnimation(h());
  }

  public final void f()
  {
    this.e = a.a(this.d, "auto_reader_speed", 5);
    this.j = ((RelativeLayout.LayoutParams)getLayoutParams());
  }

  public final int g()
  {
    return this.f;
  }

  protected void onDraw(Canvas paramCanvas)
  {
    TextPaint localTextPaint = getPaint();
    localTextPaint.setColor(getCurrentTextColor());
    localTextPaint.drawableState = getDrawableState();
    this.b = getMeasuredWidth();
    this.c = getMeasuredHeight();
    int m = this.f - this.c;
    String str1 = getText().toString();
    float f1 = getTextSize();
    this.a = 0;
    this.a = (int)(f1 + this.a);
    this.a -= m;
    Layout localLayout = getLayout();
    if (localLayout == null)
      return;
    Paint.FontMetrics localFontMetrics = localTextPaint.getFontMetrics();
    int n = (int)((int)Math.ceil(localFontMetrics.descent - localFontMetrics.ascent) * localLayout.getSpacingMultiplier() + localLayout.getSpacingAdd());
    int i1 = 0;
    label145: String str2;
    if (i1 < localLayout.getLineCount())
    {
      int i2 = localLayout.getLineStart(i1);
      int i3 = localLayout.getLineEnd(i1);
      float f2 = StaticLayout.getDesiredWidth(str1, i2, i3, getPaint());
      str2 = str1.substring(i2, i3);
      if (this.a > -f1)
      {
        if (!a(str2))
          break label246;
        a(paramCanvas, str2, f2, false);
      }
    }
    while (true)
    {
      this.a = (n + this.a);
      i1++;
      break label145;
      break;
      label246: if ((str2.length() > 0) && (str2.charAt(-1 + str2.length()) == '\n'))
        str2 = str2.substring(0, -1 + str2.length());
      paramCanvas.drawText(str2, 0.0F, this.a, localTextPaint);
    }
  }

  public void setOnPageTurning(d paramd)
  {
    this.i = paramd;
  }

  public void setTotalHeight(int paramInt)
  {
    this.f = paramInt;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.AutoReaderTextView
 * JD-Core Version:    0.6.0
 */