package android.support.v7.widget;

import android.os.Bundle;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.View;

final class az extends AccessibilityDelegateCompat
{
  az(RecyclerViewAccessibilityDelegate paramRecyclerViewAccessibilityDelegate)
  {
  }

  public final void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    super.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat);
    if ((!RecyclerViewAccessibilityDelegate.a(this.a)) && (this.a.a.b() != null))
      this.a.a.b().a(paramView, paramAccessibilityNodeInfoCompat);
  }

  public final boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
  {
    int i;
    if (super.performAccessibilityAction(paramView, paramInt, paramBundle))
      i = 1;
    ao localao1;
    do
    {
      boolean bool;
      do
      {
        return i;
        bool = RecyclerViewAccessibilityDelegate.a(this.a);
        i = 0;
      }
      while (bool);
      localao1 = this.a.a.b();
      i = 0;
    }
    while (localao1 == null);
    ao localao2 = this.a.a.b();
    return false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.az
 * JD-Core Version:    0.6.0
 */