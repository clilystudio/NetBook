package com.clilystudio.netbook.reader;

import android.support.v7.widget.SwitchCompat;
import android.widget.CompoundButton;

import com.arcsoft.hpay100.a.a;

final class bJ
        implements CompoundButton.OnCheckedChangeListener {
    bJ(ReaderOptionActivity paramReaderOptionActivity, SwitchCompat paramSwitchCompat) {
    }

    public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean) {
        a.b(this.b, "click_flip_animation", paramBoolean);
        ReaderOptionActivity.a(this.b, this.a, paramBoolean);
    }
}

