package com.clilystudio.netbook.reader;

import android.view.View;

final class bX implements View.OnClickListener {
    private /* synthetic */ String a;
    private /* synthetic */ ReaderResourceFragment b;

    bX(ReaderResourceFragment readerResourceFragment, String string) {
        this.b = readerResourceFragment;
        this.a = string;
    }

    @Override
    public final void onClick(View view) {
        ReaderResourceFragment.a(this.b, this.a);
    }
}
