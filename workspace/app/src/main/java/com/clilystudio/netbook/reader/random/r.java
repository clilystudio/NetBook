package com.clilystudio.netbook.reader.random;

final class r
        implements View.OnSystemUiVisibilityChangeListener {
    r(ReaderRandomActivity paramReaderRandomActivity) {
    }

    public final void onSystemUiVisibilityChange(int paramInt) {
        ReaderRandomActivity localReaderRandomActivity = this.a;
        if ((paramInt & 0x1) == 0) ;
        for (boolean bool = true; ; bool = false) {
            ReaderRandomActivity.b(localReaderRandomActivity, bool);
            return;
        }
    }
}

