package com.clilystudio.netbook.ui.ugcbook;

import android.view.KeyEvent;
import android.widget.TextView;

final class t
        implements TextView.OnEditorActionListener {
    t(UGCGuideAddBookActivity paramUGCGuideAddBookActivity) {
    }

    public final boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent) {
        UGCGuideAddBookActivity.b(this.a, true);
        return true;
    }
}

