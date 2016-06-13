package com.clilystudio.netbook.ui.ugcbook;

import android.view.View;

final class j
        implements View.OnClickListener {
    private /* synthetic */ UGCDetailActivity a;

    j(UGCDetailActivity uGCDetailActivity) {
        this.a = uGCDetailActivity;
    }

    @Override
    public final void onClick(View view) {
        UGCDetailActivity.d(this.a).setMaxLines(Integer.MAX_VALUE);
        UGCDetailActivity.d(this.a).setEllipsize(null);
        UGCDetailActivity.e(this.a).setVisibility(8);
        UGCDetailActivity.d(this.a).setClickable(false);
    }
}
