package android.support.v4.view.accessibility;

import android.view.accessibility.AccessibilityEvent;

class AccessibilityEventCompat$AccessibilityEventKitKatImpl extends AccessibilityEventCompat.AccessibilityEventIcsImpl
{
  public int getContentChangeTypes(AccessibilityEvent paramAccessibilityEvent)
  {
    return AccessibilityEventCompatKitKat.getContentChangeTypes(paramAccessibilityEvent);
  }

  public void setContentChangeTypes(AccessibilityEvent paramAccessibilityEvent, int paramInt)
  {
    AccessibilityEventCompatKitKat.setContentChangeTypes(paramAccessibilityEvent, paramInt);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.view.accessibility.AccessibilityEventCompat.AccessibilityEventKitKatImpl
 * JD-Core Version:    0.6.0
 */