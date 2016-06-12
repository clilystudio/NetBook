package com.clilystudio.netbook.ui.ugcbook;

import android.view.View;
import android.view.View$OnClickListener;

final class V implements View$OnClickListener {

    private UGCGuideSelectBookActivity a;

    V(UGCGuideSelectBookActivity UGCGuideSelectBookActivity1) {
        a = UGCGuideSelectBookActivity1;
    }

    public final void onClick(View View1) {
        a.finish();
    }
}
