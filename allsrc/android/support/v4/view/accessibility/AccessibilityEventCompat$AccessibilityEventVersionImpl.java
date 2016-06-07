package android.support.v4.view.accessibility;

import android.view.accessibility.AccessibilityEvent;

abstract interface AccessibilityEventCompat$AccessibilityEventVersionImpl
{
  public abstract void appendRecord(AccessibilityEvent paramAccessibilityEvent, Object paramObject);

  public abstract int getContentChangeTypes(AccessibilityEvent paramAccessibilityEvent);

  public abstract Object getRecord(AccessibilityEvent paramAccessibilityEvent, int paramInt);

  public abstract int getRecordCount(AccessibilityEvent paramAccessibilityEvent);

  public abstract void setContentChangeTypes(AccessibilityEvent paramAccessibilityEvent, int paramInt);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.view.accessibility.AccessibilityEventCompat.AccessibilityEventVersionImpl
 * JD-Core Version:    0.6.0
 */