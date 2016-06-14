package com.clilystudio.netbook.ui;

import android.view.View;

final class K implements View.OnClickListener {
    private /* synthetic */ BaseActivity a;

    K(BaseActivity baseActivity) {
        this.a = baseActivity;
    }

    @Override
    public final void onClick(View view) {
        this.a.onBackPressed();
    }
}
