package com.clilystudio.netbook.ui;

import android.text.Layout;
import android.text.Selection;
import android.text.Spannable;
import android.text.method.LinkMovementMethod;
import android.view.MotionEvent;
import android.widget.TextView;

import com.clilystudio.netbook.b_pack.b;

public final class bd extends LinkMovementMethod {
    private b a;

    private static b a(TextView textView, Spannable spannable, MotionEvent motionEvent) {
        int n = (int) motionEvent.getX();
        int n2 = (int) motionEvent.getY();
        int n3 = n - textView.getTotalPaddingLeft();
        int n4 = n2 - textView.getTotalPaddingTop();
        int n5 = n3 + textView.getScrollX();
        int n6 = n4 + textView.getScrollY();
        Layout layout = textView.getLayout();
        int n7 = layout.getOffsetForHorizontal(layout.getLineForVertical(n6), n5);
        b[] arrb = (b[]) spannable.getSpans(n7, n7, b.class);
        if (arrb.length > 0) {
            return arrb[0];
        }
        return null;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final boolean onTouchEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.a = bd.a(textView, spannable, motionEvent);
            if (this.a == null) return true;
            {
                this.a.a(true);
                Selection.setSelection(spannable, spannable.getSpanStart(this.a), spannable.getSpanEnd(this.a));
            }
            return true;
        }
        if (motionEvent.getAction() == 2) {
            b b2 = bd.a(textView, spannable, motionEvent);
            if (this.a == null || b2 == this.a) return true;
            {
                this.a.a(false);
                this.a = null;
                Selection.removeSelection(spannable);
                return true;
            }
        }
        if (this.a != null) {
            this.a.a(false);
            super.onTouchEvent(textView, spannable, motionEvent);
        }
        this.a = null;
        Selection.removeSelection(spannable);
        return true;
    }
}
