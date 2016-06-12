package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class s implements DialogInterface$OnClickListener {

    private AddGamePostActivity a;

    s(AddGamePostActivity AddGamePostActivity1) {
        a = AddGamePostActivity1;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        DialogInterface1.dismiss();
        a.finish();
    }
}
