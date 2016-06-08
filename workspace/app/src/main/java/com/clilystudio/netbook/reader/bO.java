package com.clilystudio.netbook.reader;

import android.widget.CompoundButton;

import com.arcsoft.hpay100.a.a;

final class bO
        implements CompoundButton.OnCheckedChangeListener {
    bO(ReaderOptionActivity paramReaderOptionActivity) {
    }

    public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean) {
        a.b(this.a, "key_enable_imersive_mode", paramBoolean);
        b.a(this.a, "imersive_switcher");
    }
}

