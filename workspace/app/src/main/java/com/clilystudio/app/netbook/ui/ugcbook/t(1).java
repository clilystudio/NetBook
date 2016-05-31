package com.clilystudio.app.netbook.ui.ugcbook;

import android.view.KeyEvent;
import android.widget.TextView;

final class t
        implements TextView.OnEditorActionListener {
    t(UGCGuideAddBookActivity paramUGCGuideAddBookActivity) {
    }

    public final boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent) {
        UGCGuideAddBookActivity.b_initContentView(this.a, true);
        return true;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.t
 * JD-Core Version:    0.6.2
 */