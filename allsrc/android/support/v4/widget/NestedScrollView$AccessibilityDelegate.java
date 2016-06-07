package android.support.v4.widget;

import android.os.Bundle;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.ScrollView;

class NestedScrollView$AccessibilityDelegate extends AccessibilityDelegateCompat
{
  public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
    NestedScrollView localNestedScrollView = (NestedScrollView)paramView;
    paramAccessibilityEvent.setClassName(ScrollView.class.getName());
    AccessibilityRecordCompat localAccessibilityRecordCompat = AccessibilityEventCompat.asRecord(paramAccessibilityEvent);
    if (NestedScrollView.access$000(localNestedScrollView) > 0);
    for (boolean bool = true; ; bool = false)
    {
      localAccessibilityRecordCompat.setScrollable(bool);
      localAccessibilityRecordCompat.setScrollX(localNestedScrollView.getScrollX());
      localAccessibilityRecordCompat.setScrollY(localNestedScrollView.getScrollY());
      localAccessibilityRecordCompat.setMaxScrollX(localNestedScrollView.getScrollX());
      localAccessibilityRecordCompat.setMaxScrollY(NestedScrollView.access$000(localNestedScrollView));
      return;
    }
  }

  public void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    super.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat);
    NestedScrollView localNestedScrollView = (NestedScrollView)paramView;
    paramAccessibilityNodeInfoCompat.setClassName(ScrollView.class.getName());
    if (localNestedScrollView.isEnabled())
    {
      int i = NestedScrollView.access$000(localNestedScrollView);
      if (i > 0)
      {
        paramAccessibilityNodeInfoCompat.setScrollable(true);
        if (localNestedScrollView.getScrollY() > 0)
          paramAccessibilityNodeInfoCompat.addAction(8192);
        if (localNestedScrollView.getScrollY() < i)
          paramAccessibilityNodeInfoCompat.addAction(4096);
      }
    }
  }

  public boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
  {
    if (super.performAccessibilityAction(paramView, paramInt, paramBundle))
      return true;
    NestedScrollView localNestedScrollView = (NestedScrollView)paramView;
    if (!localNestedScrollView.isEnabled())
      return false;
    switch (paramInt)
    {
    default:
      return false;
    case 4096:
      int k = Math.min(localNestedScrollView.getHeight() - localNestedScrollView.getPaddingBottom() - localNestedScrollView.getPaddingTop() + localNestedScrollView.getScrollY(), NestedScrollView.access$000(localNestedScrollView));
      if (k != localNestedScrollView.getScrollY())
      {
        localNestedScrollView.smoothScrollTo(0, k);
        return true;
      }
      return false;
    case 8192:
    }
    int i = localNestedScrollView.getHeight() - localNestedScrollView.getPaddingBottom() - localNestedScrollView.getPaddingTop();
    int j = Math.max(localNestedScrollView.getScrollY() - i, 0);
    if (j != localNestedScrollView.getScrollY())
    {
      localNestedScrollView.smoothScrollTo(0, j);
      return true;
    }
    return false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.NestedScrollView.AccessibilityDelegate
 * JD-Core Version:    0.6.0
 */