package com.clilystudio.netbook.reader;

import android.content.Context;
import android.support.v7.widget.SwitchCompat;
import android.widget.CompoundButton;

final class bK implements CompoundButton.OnCheckedChangeListener {
    private /* synthetic */ SwitchCompat a;
    private /* synthetic */ ReaderOptionActivity b;

    bK(ReaderOptionActivity readerOptionActivity, SwitchCompat switchCompat) {
        this.b = readerOptionActivity;
        this.a = switchCompat;
    }

    @Override
    public final void onCheckedChanged(CompoundButton compoundButton, boolean bl) {
        a.b((Context) this.b, "reader_opt_full_screen", bl);
        ReaderOptionActivity.a(this.b, this.a, bl);
    }
}
