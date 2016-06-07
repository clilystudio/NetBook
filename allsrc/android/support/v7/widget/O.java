package android.support.v7.widget;

import android.content.Context;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.widget.ListViewAutoScrollHelper;
import android.support.v7.appcompat.R.attr;
import android.support.v7.internal.widget.ListViewCompat;
import android.view.MotionEvent;
import android.view.View;

final class O extends ListViewCompat
{
  private boolean a;
  private boolean b;
  private boolean c;
  private ListViewAutoScrollHelper d;

  public O(Context paramContext, boolean paramBoolean)
  {
    super(paramContext, null, R.attr.dropDownListViewStyle);
    this.b = paramBoolean;
    setCacheColorHint(0);
  }

  protected final boolean a()
  {
    return (this.c) || (super.a());
  }

  public final boolean a(MotionEvent paramMotionEvent, int paramInt)
  {
    int i = MotionEventCompat.getActionMasked(paramMotionEvent);
    int m;
    int n;
    switch (i)
    {
    default:
      m = 0;
    case 3:
      for (n = 1; ; n = 0)
      {
        label38: if ((n == 0) || (m != 0))
        {
          this.c = false;
          setPressed(false);
          drawableStateChanged();
        }
        if (n == 0)
          break;
        if (this.d == null)
          this.d = new ListViewAutoScrollHelper(this);
        this.d.setEnabled(true);
        this.d.onTouch(this, paramMotionEvent);
        label105: return n;
        m = 0;
      }
    case 1:
    case 2:
    }
    for (int j = 0; ; j = 1)
    {
      int k = paramMotionEvent.findPointerIndex(paramInt);
      if (k < 0)
      {
        m = 0;
        n = 0;
        break label38;
      }
      int i1 = (int)paramMotionEvent.getX(k);
      int i2 = (int)paramMotionEvent.getY(k);
      int i3 = pointToPosition(i1, i2);
      if (i3 == -1)
      {
        n = j;
        m = 1;
        break label38;
      }
      View localView = getChildAt(i3 - getFirstVisiblePosition());
      float f1 = i1;
      float f2 = i2;
      this.c = true;
      setPressed(true);
      layoutChildren();
      setSelection(i3);
      a(i3, localView, f1, f2);
      a(false);
      refreshDrawableState();
      if (i != 1)
        break;
      performItemClick(localView, i3, getItemIdAtPosition(i3));
      break;
      if (this.d == null)
        break label105;
      this.d.setEnabled(false);
      return n;
    }
  }

  public final boolean hasFocus()
  {
    return (this.b) || (super.hasFocus());
  }

  public final boolean hasWindowFocus()
  {
    return (this.b) || (super.hasWindowFocus());
  }

  public final boolean isFocused()
  {
    return (this.b) || (super.isFocused());
  }

  public final boolean isInTouchMode()
  {
    return ((this.b) && (this.a)) || (super.isInTouchMode());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.O
 * JD-Core Version:    0.6.0
 */