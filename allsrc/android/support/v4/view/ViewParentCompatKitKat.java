package android.support.v4.view;

import android.view.View;
import android.view.ViewParent;

class ViewParentCompatKitKat
{
  public static void notifySubtreeAccessibilityStateChanged(ViewParent paramViewParent, View paramView1, View paramView2, int paramInt)
  {
    paramViewParent.notifySubtreeAccessibilityStateChanged(paramView1, paramView2, paramInt);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.view.ViewParentCompatKitKat
 * JD-Core Version:    0.6.0
 */