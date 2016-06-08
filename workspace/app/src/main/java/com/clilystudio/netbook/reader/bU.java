package com.clilystudio.netbook.reader;

import android.view.View;

final class bU
        implements View.OnClickListener {
    bU(ReaderResourceFragment paramReaderResourceFragment) {
    }

    public final void onClick(View paramView) {
        ReaderResourceFragment.a(this.a, 0);
        bY localbY = new bY(this.a, 0);
        String[] arrayOfString = new String[1];
        arrayOfString[0] = ReaderResourceFragment.a(this.a);
        localbY.b(arrayOfString);
    }
}

