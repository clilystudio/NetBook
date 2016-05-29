package com.clilystudio.app.netbook.reader;

import android.support.v7.widget.SwitchCompat;
import android.widget.CompoundButton;

import com.arcsoft.hpay100.a.a;

final class bK
        implements CompoundButton.OnCheckedChangeListener {
    bK(ReaderOptionActivity paramReaderOptionActivity, SwitchCompat paramSwitchCompat) {
    }

    public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean) {
        a.b(this.b, "reader_opt_full_screen", paramBoolean);
        ReaderOptionActivity.a(this.b, this.a, paramBoolean);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.bK
 * JD-Core Version:    0.6.2
 */