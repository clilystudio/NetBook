package com.clilystudio.netbook.ui;

import android.view.View;

final class N
        implements View.OnClickListener {
    N(BaseActivity paramBaseActivity) {
    }

    public final void onClick(View paramView) {
        this.a.onBackPressed();
    }
}

