package com.clilystudio.netbook.ui;

import android.view.View;

final class bj implements View.OnClickListener {
    private /* synthetic */ MhdListActivity a;

    bj(MhdListActivity mhdListActivity) {
        this.a = mhdListActivity;
    }

    @Override
    public final void onClick(View view) {
        MhdListActivity.a(this.a);
    }
}
