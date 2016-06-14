package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.reader.ae;

final class f implements ae {
    private /* synthetic */ ReaderTxtActivity a;

    f(ReaderTxtActivity readerTxtActivity) {
        this.a = readerTxtActivity;
    }

    @Override
    public final void a() {
        ReaderTxtActivity.B(this.a).setVisibility(0);
    }

    @Override
    public final void b() {
        ReaderTxtActivity.B(this.a).setVisibility(8);
    }
}
