package com.clilystudio.netbook.reader.random;

import android.view.View;

final class c
        implements View.OnClickListener {
    c(ReaderRandomActionBar paramReaderRandomActionBar) {
    }

    public final void onClick(View paramView) {
        ReaderRandomActionBar.a(this.a, paramView.getId());
    }
}

