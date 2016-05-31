package com.clilystudio.app.netbook.reader;

import android.support.v7.widget.SwitchCompat;
import android.widget.CompoundButton;

import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.util.I;

final class bN
        implements CompoundButton.OnCheckedChangeListener {
    bN(ReaderOptionActivity paramReaderOptionActivity, SwitchCompat paramSwitchCompat) {
    }

    public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean) {
        a.b(this.b, "auto_buy_chapter" + I.a, paramBoolean);
        ReaderOptionActivity.a_initContentView(this.b, this.a, paramBoolean);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.bN
 * JD-Core Version:    0.6.2
 */