package com.clilystudio.netbook.ui;

import android.view.View;

final class X
        implements View.OnClickListener {
    X(BaseActivity paramBaseActivity) {
    }

    public final void onClick(View paramView) {
        this.a.onBackPressed();
    }
}

