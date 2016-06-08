package com.clilystudio.netbook.reader;

import android.view.View;

final class ah
        implements View.OnClickListener {
    ah(ReaderActionBar paramReaderActionBar) {
    }

    public final void onClick(View paramView) {
        ReaderActionBar.a(this.a, paramView.getId());
    }
}

