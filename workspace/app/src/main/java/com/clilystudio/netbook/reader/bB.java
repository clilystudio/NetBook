package com.clilystudio.netbook.reader;

import android.support.design.widget.am;
import android.view.View;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.v;

final class bB implements View$OnClickListener {

    private ReaderMixActivity a;

    bB(ReaderMixActivity ReaderMixActivity1) {
        a = ReaderMixActivity1;
    }

    public final void onClick(View View1) {
        if (!"mix".equals(ReaderMixActivity.a(a))) {
            MyApplication.a().c(ReaderMixActivity.b(a));
            am.c(ReaderMixActivity.b(a), 5);
            i.a().c(new v(1));
            ReaderMixActivity.a(a, "MIX_TOC_ID");
        }
        a.finish();
    }
}
