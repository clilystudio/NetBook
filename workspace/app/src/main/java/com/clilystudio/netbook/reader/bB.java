package com.clilystudio.netbook.reader;

import android.view.View;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.v;

final class bB
        implements View.OnClickListener {
    bB(ReaderMixActivity paramReaderMixActivity) {
    }

    public final void onClick(View paramView) {
        if (!"mix".equals(ReaderMixActivity.a(this.a))) {
            MyApplication.a().c(ReaderMixActivity.b(this.a));
            am.c(ReaderMixActivity.b(this.a), 5);
            i.a().c(new v(1));
            ReaderMixActivity.a(this.a, "MIX_TOC_ID");
        }
        this.a.finish();
    }
}

