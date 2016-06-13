package com.clilystudio.netbook.reader;

import android.content.Context;
import android.support.v7.widget.SwitchCompat;
import android.widget.CompoundButton;

import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.j;

final class bL
        implements CompoundButton.OnCheckedChangeListener {
    private /* synthetic */ SwitchCompat a;
    private /* synthetic */ ReaderOptionActivity b;

    bL(ReaderOptionActivity readerOptionActivity, SwitchCompat switchCompat) {
        this.b = readerOptionActivity;
        this.a = switchCompat;
    }

    @Override
    public final void onCheckedChanged(CompoundButton compoundButton, boolean bl) {
        a.b((Context) this.b, "convert_t", bl);
        i.a().c(new j());
        ReaderOptionActivity.a(this.b, this.a, bl);
    }
}
