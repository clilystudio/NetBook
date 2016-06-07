package com.ushaqi.zhuishushenqi.reader;

import android.os.Bundle;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

final class cu extends AccessibilityDelegateCompat
{
  cu(ReaderViewPager paramReaderViewPager)
  {
  }

  public final void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(ReaderViewPager.class.getName());
  }

  public final void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    int i = 1;
    super.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat);
    paramAccessibilityNodeInfoCompat.setClassName(ReaderViewPager.class.getName());
    if ((ReaderViewPager.a(this.a) != null) && (ReaderViewPager.a(this.a).getCount() > i));
    while (true)
    {
      paramAccessibilityNodeInfoCompat.setScrollable(i);
      if ((ReaderViewPager.a(this.a) != null) && (ReaderViewPager.b(this.a) >= 0) && (ReaderViewPager.b(this.a) < -1 + ReaderViewPager.a(this.a).getCount()))
        paramAccessibilityNodeInfoCompat.addAction(4096);
      if ((ReaderViewPager.a(this.a) != null) && (ReaderViewPager.b(this.a) > 0) && (ReaderViewPager.b(this.a) < ReaderViewPager.a(this.a).getCount()))
        paramAccessibilityNodeInfoCompat.addAction(8192);
      return;
      int j = 0;
    }
  }

  public final boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
  {
    if (super.performAccessibilityAction(paramView, paramInt, paramBundle))
      return true;
    switch (paramInt)
    {
    default:
      return false;
    case 4096:
      if ((ReaderViewPager.a(this.a) != null) && (ReaderViewPager.b(this.a) >= 0) && (ReaderViewPager.b(this.a) < -1 + ReaderViewPager.a(this.a).getCount()))
      {
        this.a.a(1 + ReaderViewPager.b(this.a));
        return true;
      }
      return false;
    case 8192:
    }
    if ((ReaderViewPager.a(this.a) != null) && (ReaderViewPager.b(this.a) > 0) && (ReaderViewPager.b(this.a) < ReaderViewPager.a(this.a).getCount()))
    {
      this.a.a(-1 + ReaderViewPager.b(this.a));
      return true;
    }
    return false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.cu
 * JD-Core Version:    0.6.0
 */