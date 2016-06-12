package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class m implements DialogInterface$OnClickListener {

    private AddBookHelpActivity a;

    m(AddBookHelpActivity AddBookHelpActivity1) {
        a = AddBookHelpActivity1;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        DialogInterface1.dismiss();
        a.finish();
    }
}
