package com.clilystudio.netbook.ui;

import android.view.View;

final class L
        implements View.OnClickListener {
    private /* synthetic */ ab a;

    L(BaseActivity baseActivity, ab ab2) {
        this.a = ab2;
    }

    @Override
    public final void onClick(View view) {
        this.a.a();
    }
}
