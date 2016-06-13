package com.clilystudio.netbook.ui.ugcbook;

import android.view.View;

final class l
        implements View.OnClickListener {
    private /* synthetic */ UGCDetailActivity a;

    l(UGCDetailActivity uGCDetailActivity) {
        this.a = uGCDetailActivity;
    }

    @Override
    public final void onClick(View view) {
        UGCDetailActivity.f(this.a);
    }
}
