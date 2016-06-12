package com.clilystudio.netbook.ui.home;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class e implements DialogInterface$OnClickListener {

    private HomeActivity a;

    e(HomeActivity HomeActivity1) {
        a = HomeActivity1;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        a.finish();
    }
}
