package com.clilystudio.netbook.reader;

final class aV
        implements View.OnSystemUiVisibilityChangeListener {
    aV(ReaderActivity paramReaderActivity) {
    }

    public final void onSystemUiVisibilityChange(int paramInt) {
        ReaderActivity localReaderActivity = this.a;
        if ((paramInt & 0x1) == 0) ;
        for (boolean bool = true; ; bool = false) {
            ReaderActivity.f(localReaderActivity, bool);
            return;
        }
    }
}

