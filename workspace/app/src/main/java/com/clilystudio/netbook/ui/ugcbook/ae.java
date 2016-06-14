package com.clilystudio.netbook.ui.ugcbook;

import android.view.View;

final class ae implements View.OnClickListener {
    private /* synthetic */ UGCMainActivity a;

    ae(UGCMainActivity uGCMainActivity) {
        this.a = uGCMainActivity;
    }

    @Override
    public final void onClick(View view) {
        UGCMainActivity.h(this.a);
    }
}
