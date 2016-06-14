package com.clilystudio.netbook.reader;

import android.view.View;

import com.clilystudio.netbook.util.I;

final class x implements View.OnClickListener {
    private /* synthetic */ o a;

    x(o o2) {
        this.a = o2;
    }

    @Override
    public final void onClick(View view) {
        if (o.a(this.a) instanceof ReaderActivity) {
            ((ReaderActivity) o.a(this.a)).i();
            b.a(o.a(this.a), "paying_page_cancel", I.b);
        }
    }
}
