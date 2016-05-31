package com.clilystudio.app.netbook.reader;

import android.support.v7.widget.SwitchCompat;
import android.widget.CompoundButton;

import com.arcsoft.hpay100.a.a;

final class bJ
        implements CompoundButton.OnCheckedChangeListener {
    bJ(ReaderOptionActivity paramReaderOptionActivity, SwitchCompat paramSwitchCompat) {
    }

    public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean) {
        a.b(this.b, "click_flip_animation", paramBoolean);
        ReaderOptionActivity.a_initContentView(this.b, this.a, paramBoolean);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.bJ
 * JD-Core Version:    0.6.2
 */