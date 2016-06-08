package com.clilystudio.netbook.reader;

import android.view.View;

import com.clilystudio.netbook.util.I;

final class x
        implements View.OnClickListener {
    x(o paramo) {
    }

    public final void onClick(View paramView) {
        if ((o.a(this.a) instanceof ReaderActivity)) {
            ((ReaderActivity) o.a(this.a)).i();
            b.a(o.a(this.a), "paying_page_cancel", I.b);
        }
    }
}

