package com.clilystudio.netbook.ui.ugcbook;

import android.view.View;
import android.view.View$OnClickListener;

final class j implements View$OnClickListener {

    private UGCDetailActivity a;

    j(UGCDetailActivity UGCDetailActivity1) {
        a = UGCDetailActivity1;
    }

    public final void onClick(View View1) {
        UGCDetailActivity.d(a).setMaxLines(2147483647);
        UGCDetailActivity.d(a).setEllipsize(null);
        UGCDetailActivity.e(a).setVisibility(8);
        UGCDetailActivity.d(a).setClickable(false);
    }
}
