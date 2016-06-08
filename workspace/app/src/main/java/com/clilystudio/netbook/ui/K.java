package com.clilystudio.netbook.ui;

import android.view.View;

final class K
        implements View.OnClickListener {
    K(BaseActivity paramBaseActivity) {
    }

    public final void onClick(View paramView) {
        this.a.onBackPressed();
    }
}

