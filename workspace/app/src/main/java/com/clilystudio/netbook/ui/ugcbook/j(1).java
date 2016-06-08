package com.clilystudio.netbook.ui.ugcbook;

import android.view.View;

final class j
        implements View.OnClickListener {
    j(UGCDetailActivity paramUGCDetailActivity) {
    }

    public final void onClick(View paramView) {
        UGCDetailActivity.d(this.a).setMaxLines(2147483647);
        UGCDetailActivity.d(this.a).setEllipsize(null);
        UGCDetailActivity.e(this.a).setVisibility(8);
        UGCDetailActivity.d(this.a).setClickable(false);
    }
}

