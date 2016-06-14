package com.clilystudio.netbook.reader;

import android.content.Context;
import android.support.v7.widget.SwitchCompat;
import android.widget.CompoundButton;

import com.clilystudio.netbook.util.I;

final class bN implements CompoundButton.OnCheckedChangeListener {
    private /* synthetic */ SwitchCompat a;
    private /* synthetic */ ReaderOptionActivity b;

    bN(ReaderOptionActivity readerOptionActivity, SwitchCompat switchCompat) {
        this.b = readerOptionActivity;
        this.a = switchCompat;
    }

    @Override
    public final void onCheckedChanged(CompoundButton compoundButton, boolean bl) {
        a.b((Context) this.b, "auto_buy_chapter" + I.a, bl);
        ReaderOptionActivity.a(this.b, this.a, bl);
    }
}
