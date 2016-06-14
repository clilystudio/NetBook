package com.clilystudio.netbook.ui.ugcbook;

import android.view.View;

final class ao implements View.OnClickListener {
    private /* synthetic */ an a;

    ao(an an2, ak ak2) {
        this.a = an2;
    }

    @Override
    public final void onClick(View view) {
        if (this.a.j == null) {
            return;
        }
        this.a.k.a = false;
        UGCMainActivity.a(this.a.k.c, this.a.j);
        this.a.k.c(0);
    }
}
