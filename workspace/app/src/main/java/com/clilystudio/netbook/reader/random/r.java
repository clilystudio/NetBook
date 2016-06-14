package com.clilystudio.netbook.reader.random;

import android.view.View;

final class r implements View.OnSystemUiVisibilityChangeListener {
    private /* synthetic */ ReaderRandomActivity a;

    r(ReaderRandomActivity readerRandomActivity) {
        this.a = readerRandomActivity;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void onSystemUiVisibilityChange(int n2) {
        ReaderRandomActivity readerRandomActivity = this.a;
        boolean bl = (n2 & 1) == 0;
        ReaderRandomActivity.b(readerRandomActivity, bl);
    }
}
