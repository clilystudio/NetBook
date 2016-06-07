package android.support.v4.view.accessibility;

public class AccessibilityNodeInfoCompat$AccessibilityActionCompat
{
  private final Object mAction;

  public AccessibilityNodeInfoCompat$AccessibilityActionCompat(int paramInt, CharSequence paramCharSequence)
  {
    this(AccessibilityNodeInfoCompat.access$000().newAccessibilityAction(paramInt, paramCharSequence));
  }

  private AccessibilityNodeInfoCompat$AccessibilityActionCompat(Object paramObject)
  {
    this.mAction = paramObject;
  }

  public int getId()
  {
    return AccessibilityNodeInfoCompat.access$000().getAccessibilityActionId(this.mAction);
  }

  public CharSequence getLabel()
  {
    return AccessibilityNodeInfoCompat.access$000().getAccessibilityActionLabel(this.mAction);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.AccessibilityActionCompat
 * JD-Core Version:    0.6.0
 */