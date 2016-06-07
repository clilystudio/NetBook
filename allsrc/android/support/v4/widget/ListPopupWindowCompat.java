package android.support.v4.widget;

import android.os.Build.VERSION;
import android.view.View;
import android.view.View.OnTouchListener;

public class ListPopupWindowCompat
{
  static final ListPopupWindowCompat.ListPopupWindowImpl IMPL;

  static
  {
    if (Build.VERSION.SDK_INT >= 19)
    {
      IMPL = new ListPopupWindowCompat.KitKatListPopupWindowImpl();
      return;
    }
    IMPL = new ListPopupWindowCompat.BaseListPopupWindowImpl();
  }

  public static View.OnTouchListener createDragToOpenListener(Object paramObject, View paramView)
  {
    return IMPL.createDragToOpenListener(paramObject, paramView);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.ListPopupWindowCompat
 * JD-Core Version:    0.6.0
 */