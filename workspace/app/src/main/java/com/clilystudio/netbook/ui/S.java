package com.clilystudio.netbook.ui;

import android.view.View;

final class S
        implements View.OnClickListener {
    S(BaseActivity paramBaseActivity) {
    }

    public final void onClick(View paramView) {
        this.a.onBackPressed();
    }
}

