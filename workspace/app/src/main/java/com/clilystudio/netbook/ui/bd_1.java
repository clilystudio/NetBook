package com.clilystudio.netbook.ui;

import android.text.Selection;
import android.text.Spannable;
import android.text.method.LinkMovementMethod;
import android.view.MotionEvent;
import android.widget.TextView;

import com.clilystudio.netbook.b.b;

public final class bd extends LinkMovementMethod {

    private b a;
// Error: Internal #201: 
// The following method may not be correct.

    private static b a(TextView TextView1, Spannable Spannable2, MotionEvent MotionEvent3) {
    }

    public final boolean onTouchEvent(TextView TextView1, Spannable Spannable2, MotionEvent MotionEvent3) {
        if (MotionEvent3.getAction() == 0) {
            a = a(TextView1, Spannable2, MotionEvent3);
            if (a != null) {
                a.a(true);
                Selection.setSelection(Spannable2, Spannable2.getSpanStart(a), Spannable2.getSpanEnd(a));
            }
        } else if (MotionEvent3.getAction() == 2) {
            b b5 = a(TextView1, Spannable2, MotionEvent3);

            if (a != null && b5 != a) {
                a.a(false);
                a = null;
                Selection.removeSelection(Spannable2);
                return true;
            }
        } else {
            if (a != null) {
                a.a(false);
                super.onTouchEvent(TextView1, Spannable2, MotionEvent3);
            }
            a = null;
            Selection.removeSelection(Spannable2);
            return true;
        }
        return true;
    }
}
