package com.clilystudio.netbook.reader;

import android.support.v7.widget.SwitchCompat;
import android.widget.CompoundButton;

import com.clilystudio.netbook.hpay100.a_Pack.a;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.j;
import com.squareup.a.b;

final class bL
        implements CompoundButton.OnCheckedChangeListener {
    bL(ReaderOptionActivity paramReaderOptionActivity, SwitchCompat paramSwitchCompat) {
    }

    public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean) {
        a.b(this.b, "convert_t", paramBoolean);
        i.a().c(new j());
        ReaderOptionActivity.a(this.b, this.a, paramBoolean);
    }
}

