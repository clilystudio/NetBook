package com.clilystudio.netbook.ui;

import android.view.View;

final class P implements View.OnClickListener {
    private /* synthetic */ BaseActivity a;

    P(BaseActivity baseActivity) {
        this.a = baseActivity;
    }

    @Override
    public final void onClick(View view) {
        this.a.onBackPressed();
    }
}
