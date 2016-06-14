package com.clilystudio.netbook.ui;

import android.view.View;

final class bO implements View.OnClickListener {
    private /* synthetic */ bM a;

    bO(bM bM2) {
        this.a = bM2;
    }

    @Override
    public final void onClick(View view) {
        a.G(this.a.a);
        SearchActivity.e(this.a.a).a();
    }
}
