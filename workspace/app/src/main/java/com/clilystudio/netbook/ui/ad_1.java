package com.clilystudio.netbook.ui;

import android.view.View;

final class ad implements View.OnClickListener {
    private /* synthetic */ BaseLoadingFragment a;

    ad(BaseLoadingFragment baseLoadingFragment) {
        this.a = baseLoadingFragment;
    }

    @Override
    public final void onClick(View view) {
        this.a.b();
    }
}
