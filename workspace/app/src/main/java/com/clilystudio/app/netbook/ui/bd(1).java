package com.clilystudio.app.netbook.ui;

import android.text.Layout;
import android.text.Selection;
import android.text.Spannable;
import android.text.method.LinkMovementMethod;
import android.view.MotionEvent;
import android.widget.TextView;
import com.clilystudio.app.netbook.b.b;

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
    b localb;
    do
    {
      return true;
      if (paramMotionEvent.getAction() != 2)
        break;
      localb = a(paramTextView, paramSpannable, paramMotionEvent);
    }
    while ((this.a == null) || (localb == this.a));
    this.a.a(false);
    this.a = null;
    Selection.removeSelection(paramSpannable);
    return true;
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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.bd
 * JD-Core Version:    0.6.2
 */