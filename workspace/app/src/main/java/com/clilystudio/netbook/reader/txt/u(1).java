package com.clilystudio.netbook.reader.txt;

final class u
        implements View.OnSystemUiVisibilityChangeListener {
    u(ReaderTxtActivity paramReaderTxtActivity) {
    }

    public final void onSystemUiVisibilityChange(int paramInt) {
        ReaderTxtActivity localReaderTxtActivity = this.a;
        if ((paramInt & 0x1) == 0) ;
        for (boolean bool = true; ; bool = false) {
            ReaderTxtActivity.d(localReaderTxtActivity, bool);
            return;
        }
    }
}

