package com.clilystudio.netbook.reader;

import android.support.v7.widget.SwitchCompat;
import android.widget.CompoundButton;

import com.clilystudio.netbook.hpay100.a_Pack.a;

final class bK
        implements CompoundButton.OnCheckedChangeListener {
    bK(ReaderOptionActivity paramReaderOptionActivity, SwitchCompat paramSwitchCompat) {
    }

    public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean) {
        a.b(this.b, "reader_opt_full_screen", paramBoolean);
        ReaderOptionActivity.a(this.b, this.a, paramBoolean);
    }
}

