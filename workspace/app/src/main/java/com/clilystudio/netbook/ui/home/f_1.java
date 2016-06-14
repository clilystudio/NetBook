package com.clilystudio.netbook.ui.home;

import android.content.DialogInterface;

import com.clilystudio.netbook.util.as;
import com.clilystudio.netbook.util.e;

final class f implements DialogInterface.OnClickListener {
    private /* synthetic */ HomeActivity a;

    f(HomeActivity homeActivity) {
        this.a = homeActivity;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        as.a();
        as.i();
        e.b(this.a);
        this.a.finish();
    }
}
