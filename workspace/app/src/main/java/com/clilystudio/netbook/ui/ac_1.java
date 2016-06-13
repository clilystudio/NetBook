package com.clilystudio.netbook.ui;

import android.view.View;

final class ac
        implements View.OnClickListener {
    private /* synthetic */ BaseLoadingActivity a;

    ac(BaseLoadingActivity baseLoadingActivity) {
        this.a = baseLoadingActivity;
    }

    @Override
    public final void onClick(View view) {
        this.a.b();
    }
}
