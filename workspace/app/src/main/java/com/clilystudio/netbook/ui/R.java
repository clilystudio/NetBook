package com.clilystudio.netbook.ui;

import android.view.View;

final class R
        implements View.OnClickListener {
    R(BaseActivity paramBaseActivity) {
    }

    public final void onClick(View paramView) {
        this.a.onBackPressed();
    }
}

