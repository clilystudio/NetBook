package com.ushaqi.zhuishushenqi.ui;

import android.text.Layout;
import android.text.Selection;
import android.text.Spannable;
import android.text.method.LinkMovementMethod;
import android.view.MotionEvent;
import android.widget.TextView;
import com.ushaqi.zhuishushenqi.b.b;

public final class bd extends LinkMovementMethod
{
  private b a;

  private static b a(TextView paramTextView, Spannable paramSpannable, MotionEvent paramMotionEvent)
  {
    int i = (int)paramMotionEvent.getX();
    int j = (int)paramMotionEvent.getY();
    int k = i - paramTextView.getTotalPaddingLeft();
    int m = j - paramTextView.getTotalPaddingTop();
    int n = k + paramTextView.getScrollX();
    int i1 = m + paramTextView.getScrollY();
    Layout localLayout = paramTextView.getLayout();
    int i2 = localLayout.getOffsetForHorizontal(localLayout.getLineForVertical(i1), n);
    b[] arrayOfb = (b[])paramSpannable.getSpans(i2, i2, b.class);
    if (arrayOfb.length > 0)
      return arrayOfb[0];
    return null;
  }

  public final boolean onTouchEvent(TextView paramTextView, Spannable paramSpannable, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0)
    {
      this.a = a(paramTextView, paramSpannable, paramMotionEvent);
      if (this.a != null)
      {
        this.a.a(true);
        Selection.setSelection(paramSpannable, paramSpannable.getSpanStart(this.a), paramSpannable.getSpanEnd(this.a));
      }
    }
    while (true)
    {
      return true;
      if (paramMotionEvent.getAction() != 2)
        break;
      b localb = a(paramTextView, paramSpannable, paramMotionEvent);
      if ((this.a == null) || (localb == this.a))
        continue;
      this.a.a(false);
      this.a = null;
      Selection.removeSelection(paramSpannable);
      return true;
    }
    if (this.a != null)
    {
      this.a.a(false);
      super.onTouchEvent(paramTextView, paramSpannable, paramMotionEvent);
    }
    this.a = null;
    Selection.removeSelection(paramSpannable);
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.bd
 * JD-Core Version:    0.6.0
 */