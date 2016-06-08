package com.clilystudio.netbook.ui;

import android.view.View;

final class P
        implements View.OnClickListener {
    P(BaseActivity paramBaseActivity) {
    }

    public final void onClick(View paramView) {
        this.a.onBackPressed();
    }
}

