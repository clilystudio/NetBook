package com.clilystudio.netbook.reader;

import android.view.View;

final class cA
        implements View.OnClickListener {
    cA(ReaderWebActionBar paramReaderWebActionBar) {
    }

    public final void onClick(View paramView) {
        ReaderWebActionBar.a(this.a, paramView.getId());
    }
}

