package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.am;
import android.view.View;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.v;

final class bB implements View.OnClickListener {
    private /* synthetic */ ReaderMixActivity a;

    bB(ReaderMixActivity readerMixActivity) {
        this.a = readerMixActivity;
    }

    @Override
    public final void onClick(View view) {
        if (!"mix".equals(ReaderMixActivity.a(this.a))) {
            MyApplication.a().c(ReaderMixActivity.b(this.a));
            am.c((String) ReaderMixActivity.b(this.a), (int) 5);
            i.a().c(new v(1));
            ReaderMixActivity.a(this.a, "MIX_TOC_ID");
        }
        this.a.finish();
    }
}
