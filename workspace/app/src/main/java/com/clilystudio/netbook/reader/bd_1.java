package com.clilystudio.netbook.reader;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

import com.clilystudio.netbook.event.d;
import com.clilystudio.netbook.event.i;

final class bd implements DialogInterface$OnClickListener {

    private ReaderActivity a;

    bd(ReaderActivity ReaderActivity1) {
        a = ReaderActivity1;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        DialogInterface1.dismiss();
        i.a().c(new d(ReaderActivity.M(a), 3));
    }
}
