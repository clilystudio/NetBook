package com.clilystudio.netbook.ui;

import android.view.View;

final class U
        implements View.OnClickListener {
    U(BaseActivity paramBaseActivity) {
    }

    public final void onClick(View paramView) {
        this.a.onBackPressed();
    }
}

