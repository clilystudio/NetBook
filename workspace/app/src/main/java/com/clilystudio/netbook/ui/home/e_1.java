package com.clilystudio.netbook.ui.home;

import android.content.DialogInterface;

final class e
        implements DialogInterface.OnClickListener {
    private /* synthetic */ HomeActivity a;

    e(HomeActivity homeActivity) {
        this.a = homeActivity;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        this.a.finish();
    }
}
