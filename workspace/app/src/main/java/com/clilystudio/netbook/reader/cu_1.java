package com.clilystudio.netbook.reader;

import android.os.Bundle;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

final class cu
        extends AccessibilityDelegateCompat {
    private /* synthetic */ ReaderViewPager a;

    cu(ReaderViewPager readerViewPager) {
        this.a = readerViewPager;
    }

    @Override
    public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        accessibilityEvent.setClassName(ReaderViewPager.class.getName());
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        int n = 1;
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        accessibilityNodeInfoCompat.setClassName(ReaderViewPager.class.getName());
        if (ReaderViewPager.a(this.a) == null || ReaderViewPager.a(this.a).getCount() <= n) {
            n = 0;
        }
        accessibilityNodeInfoCompat.setScrollable((boolean) n);
        if (ReaderViewPager.a(this.a) != null && ReaderViewPager.b(this.a) >= 0 && ReaderViewPager.b(this.a) < -1 + ReaderViewPager.a(this.a).getCount()) {
            accessibilityNodeInfoCompat.addAction(4096);
        }
        if (ReaderViewPager.a(this.a) != null && ReaderViewPager.b(this.a) > 0 && ReaderViewPager.b(this.a) < ReaderViewPager.a(this.a).getCount()) {
            accessibilityNodeInfoCompat.addAction(8192);
        }
    }

    @Override
    public final boolean performAccessibilityAction(View view, int n, Bundle bundle) {
        if (super.performAccessibilityAction(view, n, bundle)) {
            return true;
        }
        switch (n) {
            default: {
                return false;
            }
            case 4096: {
                if (ReaderViewPager.a(this.a) != null && ReaderViewPager.b(this.a) >= 0 && ReaderViewPager.b(this.a) < -1 + ReaderViewPager.a(this.a).getCount()) {
                    this.a.a(1 + ReaderViewPager.b(this.a));
                    return true;
                }
                return false;
            }
            case 8192:
        }
        if (ReaderViewPager.a(this.a) != null && ReaderViewPager.b(this.a) > 0 && ReaderViewPager.b(this.a) < ReaderViewPager.a(this.a).getCount()) {
            this.a.a(-1 + ReaderViewPager.b(this.a));
            return true;
        }
        return false;
    }
}
