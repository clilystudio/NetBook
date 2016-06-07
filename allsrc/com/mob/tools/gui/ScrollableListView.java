package com.mob.tools.gui;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.widget.ListView;
import com.koushikdutta.async.s;

public class ScrollableListView extends ListView
  implements s
{
  private r a;
  private boolean b;

  public ScrollableListView(Context paramContext)
  {
    super(paramContext);
    k();
  }

  public ScrollableListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    k();
  }

  public ScrollableListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    k();
  }

  private void k()
  {
    setCacheColorHint(0);
    setSelector(new ColorDrawable());
    setDividerHeight(0);
    this.a = new t(this);
  }

  public final boolean b()
  {
    return this.b;
  }

  protected int computeVerticalScrollOffset()
  {
    int i = super.computeVerticalScrollOffset();
    if (this.a != null)
      this.a.a(i, 0);
    return i;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.gui.ScrollableListView
 * JD-Core Version:    0.6.0
 */