package com.clilystudio.netbook.ui.ugcbook;

import android.view.KeyEvent;
import android.widget.TextView;

final class t
        implements TextView.OnEditorActionListener {
    private /* synthetic */ UGCGuideAddBookActivity a;

    t(UGCGuideAddBookActivity uGCGuideAddBookActivity) {
        this.a = uGCGuideAddBookActivity;
    }

    @Override
    public final boolean onEditorAction(TextView textView, int n, KeyEvent keyEvent) {
        UGCGuideAddBookActivity.b(this.a, true);
        return true;
    }
}
