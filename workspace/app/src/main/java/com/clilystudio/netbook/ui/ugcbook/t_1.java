package com.clilystudio.netbook.ui.ugcbook;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView$OnEditorActionListener;

final class t implements TextView$OnEditorActionListener {

    private UGCGuideAddBookActivity a;

    t(UGCGuideAddBookActivity UGCGuideAddBookActivity1) {
        a = UGCGuideAddBookActivity1;
    }

    public final boolean onEditorAction(TextView TextView1, int int2, KeyEvent KeyEvent3) {
        UGCGuideAddBookActivity.b(a, true);
        return true;
    }
}
