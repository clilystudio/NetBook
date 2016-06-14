package com.clilystudio.netbook.reader;

import android.view.View;

final class aV implements View.OnSystemUiVisibilityChangeListener {
    private /* synthetic */ ReaderActivity a;

    aV(ReaderActivity readerActivity) {
        this.a = readerActivity;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void onSystemUiVisibilityChange(int n2) {
        ReaderActivity readerActivity = this.a;
        boolean bl = (n2 & 1) == 0;
        ReaderActivity.f(readerActivity, bl);
    }
}
