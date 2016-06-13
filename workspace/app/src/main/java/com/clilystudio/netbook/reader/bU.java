package com.clilystudio.netbook.reader;

import android.view.View;

final class bU
        implements View.OnClickListener {
    private /* synthetic */ ReaderResourceFragment a;

    bU(ReaderResourceFragment readerResourceFragment) {
        this.a = readerResourceFragment;
    }

    @Override
    public final void onClick(View view) {
        ReaderResourceFragment.a(this.a, 0);
        bY bY2 = new bY(this.a, 0);
        String[] arrstring = new String[]{ReaderResourceFragment.a(this.a)};
        bY2.b(arrstring);
    }
}
