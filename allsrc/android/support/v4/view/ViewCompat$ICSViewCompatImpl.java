package android.support.v4.view;

import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import java.lang.reflect.Field;
import java.util.WeakHashMap;

class ViewCompat$ICSViewCompatImpl extends ViewCompat.HCViewCompatImpl
{
  static boolean accessibilityDelegateCheckFailed = false;
  static Field mAccessibilityDelegateField;

  public ViewPropertyAnimatorCompat animate(View paramView)
  {
    if (this.mViewPropertyAnimatorCompatMap == null)
      this.mViewPropertyAnimatorCompatMap = new WeakHashMap();
    ViewPropertyAnimatorCompat localViewPropertyAnimatorCompat = (ViewPropertyAnimatorCompat)this.mViewPropertyAnimatorCompatMap.get(paramView);
    if (localViewPropertyAnimatorCompat == null)
    {
      localViewPropertyAnimatorCompat = new ViewPropertyAnimatorCompat(paramView);
      this.mViewPropertyAnimatorCompatMap.put(paramView, localViewPropertyAnimatorCompat);
    }
    return localViewPropertyAnimatorCompat;
  }

  public boolean canScrollHorizontally(View paramView, int paramInt)
  {
    return ViewCompatICS.canScrollHorizontally(paramView, paramInt);
  }

  public boolean canScrollVertically(View paramView, int paramInt)
  {
    return ViewCompatICS.canScrollVertically(paramView, paramInt);
  }

  // ERROR //
  public boolean hasAccessibilityDelegate(View paramView)
  {
    // Byte code:
    //   0: getstatic 12	android/support/v4/view/ViewCompat$ICSViewCompatImpl:accessibilityDelegateCheckFailed	Z
    //   3: ifeq +5 -> 8
    //   6: iconst_0
    //   7: ireturn
    //   8: getstatic 52	android/support/v4/view/ViewCompat$ICSViewCompatImpl:mAccessibilityDelegateField	Ljava/lang/reflect/Field;
    //   11: ifnonnull +23 -> 34
    //   14: ldc 54
    //   16: ldc 56
    //   18: invokevirtual 62	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   21: astore 5
    //   23: aload 5
    //   25: putstatic 52	android/support/v4/view/ViewCompat$ICSViewCompatImpl:mAccessibilityDelegateField	Ljava/lang/reflect/Field;
    //   28: aload 5
    //   30: iconst_1
    //   31: invokevirtual 68	java/lang/reflect/Field:setAccessible	(Z)V
    //   34: getstatic 52	android/support/v4/view/ViewCompat$ICSViewCompatImpl:mAccessibilityDelegateField	Ljava/lang/reflect/Field;
    //   37: aload_1
    //   38: invokevirtual 69	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   41: astore_3
    //   42: aload_3
    //   43: ifnull -37 -> 6
    //   46: iconst_1
    //   47: ireturn
    //   48: astore 4
    //   50: iconst_1
    //   51: putstatic 12	android/support/v4/view/ViewCompat$ICSViewCompatImpl:accessibilityDelegateCheckFailed	Z
    //   54: iconst_0
    //   55: ireturn
    //   56: astore_2
    //   57: iconst_1
    //   58: putstatic 12	android/support/v4/view/ViewCompat$ICSViewCompatImpl:accessibilityDelegateCheckFailed	Z
    //   61: iconst_0
    //   62: ireturn
    //
    // Exception table:
    //   from	to	target	type
    //   14	34	48	java/lang/Throwable
    //   34	42	56	java/lang/Throwable
  }

  public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    ViewCompatICS.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
  }

  public void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    ViewCompatICS.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat.getInfo());
  }

  public void onPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    ViewCompatICS.onPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
  }

  public void setAccessibilityDelegate(View paramView, AccessibilityDelegateCompat paramAccessibilityDelegateCompat)
  {
    if (paramAccessibilityDelegateCompat == null);
    for (Object localObject = null; ; localObject = paramAccessibilityDelegateCompat.getBridge())
    {
      ViewCompatICS.setAccessibilityDelegate(paramView, localObject);
      return;
    }
  }

  public void setFitsSystemWindows(View paramView, boolean paramBoolean)
  {
    ViewCompatICS.setFitsSystemWindows(paramView, paramBoolean);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.view.ViewCompat.ICSViewCompatImpl
 * JD-Core Version:    0.6.0
 */