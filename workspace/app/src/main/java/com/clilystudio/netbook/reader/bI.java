package com.clilystudio.netbook.reader;

import android.support.v7.widget.SwitchCompat;
import android.widget.CompoundButton;

import com.arcsoft.hpay100.a.a;

final class bI
        implements CompoundButton.OnCheckedChangeListener {
    bI(ReaderOptionActivity paramReaderOptionActivity, SwitchCompat paramSwitchCompat) {
    }

    public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean) {
        a.b(this.b, "volume_keys_flip", paramBoolean);
        ReaderOptionActivity.a(this.b, this.a, paramBoolean);
    }
}

