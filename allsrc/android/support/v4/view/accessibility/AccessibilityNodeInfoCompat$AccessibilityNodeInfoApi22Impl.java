package android.support.v4.view.accessibility;

import android.view.View;

class AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi22Impl extends AccessibilityNodeInfoCompat.AccessibilityNodeInfoApi21Impl
{
  public AccessibilityNodeInfoCompat getTraversalAfter(Object paramObject)
  {
    Object localObject = AccessibilityNodeInfoCompatApi22.getTraversalAfter(paramObject);
    if (localObject == null)
      return null;
    return new AccessibilityNodeInfoCompat(localObject);
  }

  public AccessibilityNodeInfoCompat getTraversalBefore(Object paramObject)
  {
    Object localObject = AccessibilityNodeInfoCompatApi22.getTraversalBefore(paramObject);
    if (localObject == null)
      return null;
    return new AccessibilityNodeInfoCompat(localObject);
  }

  public void setTraversalAfter(Object paramObject, View paramView)
  {
    AccessibilityNodeInfoCompatApi22.setTraversalAfter(paramObject, paramView);
  }

  public void setTraversalAfter(Object paramObject, View paramView, int paramInt)
  {
    AccessibilityNodeInfoCompatApi22.setTraversalAfter(paramObject, paramView, paramInt);
  }

  public void setTraversalBefore(Object paramObject, View paramView)
  {
    AccessibilityNodeInfoCompatApi22.setTraversalBefore(paramObject, paramView);
  }

  public void setTraversalBefore(Object paramObject, View paramView, int paramInt)
  {
    AccessibilityNodeInfoCompatApi22.setTraversalBefore(paramObject, paramView, paramInt);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.AccessibilityNodeInfoApi22Impl
 * JD-Core Version:    0.6.0
 */