package android.support.design.widget;

import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.TextView;
import java.util.List;

final class at extends AccessibilityDelegateCompat
{
  private at(TextInputLayout paramTextInputLayout)
  {
  }

  public final void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(TextInputLayout.class.getSimpleName());
  }

  public final void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    super.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat);
    paramAccessibilityNodeInfoCompat.setClassName(TextInputLayout.class.getSimpleName());
    CharSequence localCharSequence1 = TextInputLayout.c(this.a).d();
    if (!TextUtils.isEmpty(localCharSequence1))
      paramAccessibilityNodeInfoCompat.setText(localCharSequence1);
    if (TextInputLayout.d(this.a) != null)
      paramAccessibilityNodeInfoCompat.setLabelFor(TextInputLayout.d(this.a));
    if (TextInputLayout.b(this.a) != null);
    for (CharSequence localCharSequence2 = TextInputLayout.b(this.a).getText(); ; localCharSequence2 = null)
    {
      if (!TextUtils.isEmpty(localCharSequence2))
      {
        paramAccessibilityNodeInfoCompat.setContentInvalid(true);
        paramAccessibilityNodeInfoCompat.setError(localCharSequence2);
      }
      return;
    }
  }

  public final void onPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.onPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
    CharSequence localCharSequence = TextInputLayout.c(this.a).d();
    if (!TextUtils.isEmpty(localCharSequence))
      paramAccessibilityEvent.getText().add(localCharSequence);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.at
 * JD-Core Version:    0.6.0
 */