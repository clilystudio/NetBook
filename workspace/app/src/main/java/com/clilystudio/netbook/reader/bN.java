package com.clilystudio.netbook.reader;

import android.support.v7.widget.SwitchCompat;
import android.widget.CompoundButton;

import com.arcsoft.hpay100.a.a;
import com.clilystudio.netbook.util.I;

final class bN
        implements CompoundButton.OnCheckedChangeListener {
    bN(ReaderOptionActivity paramReaderOptionActivity, SwitchCompat paramSwitchCompat) {
    }

    public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean) {
        a.b(this.b, "auto_buy_chapter" + I.a, paramBoolean);
        ReaderOptionActivity.a(this.b, this.a, paramBoolean);
    }
}

