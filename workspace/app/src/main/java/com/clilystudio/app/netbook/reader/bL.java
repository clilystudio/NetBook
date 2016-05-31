package com.clilystudio.app.netbook.reader;

import android.support.v7.widget.SwitchCompat;
import android.widget.CompoundButton;

import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.event.i;
import com.clilystudio.app.netbook.event.j;
import com.squareup.a.b;

final class bL
        implements CompoundButton.OnCheckedChangeListener {
    bL(ReaderOptionActivity paramReaderOptionActivity, SwitchCompat paramSwitchCompat) {
    }

    public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean) {
        a.b(this.b, "convert_t", paramBoolean);
        i.a().c(new j());
        ReaderOptionActivity.a_initContentView(this.b, this.a, paramBoolean);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.bL
 * JD-Core Version:    0.6.2
 */