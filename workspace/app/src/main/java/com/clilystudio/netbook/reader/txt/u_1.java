package com.clilystudio.netbook.reader.txt;

import android.view.View;

final class u implements View.OnSystemUiVisibilityChangeListener {
    private /* synthetic */ ReaderTxtActivity a;

    u(ReaderTxtActivity readerTxtActivity) {
        this.a = readerTxtActivity;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void onSystemUiVisibilityChange(int n2) {
        ReaderTxtActivity readerTxtActivity = this.a;
        boolean bl = (n2 & 1) == 0;
        ReaderTxtActivity.d(readerTxtActivity, bl);
    }
}
