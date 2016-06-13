package com.clilystudio.netbook.ui.ugcbook;

import android.view.View;

final class ag
        implements View.OnClickListener {
    private /* synthetic */ UGCMainActivity a;

    ag(UGCMainActivity uGCMainActivity) {
        this.a = uGCMainActivity;
    }

    @Override
    public final void onClick(View view) {
        UGCMainActivity.i(this.a);
    }
}
