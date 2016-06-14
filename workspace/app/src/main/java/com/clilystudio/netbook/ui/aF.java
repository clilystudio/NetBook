package com.clilystudio.netbook.ui;

import android.view.View;

final class aF implements View.OnClickListener {
    private /* synthetic */ String a;
    private /* synthetic */ BookInfoActivity b;

    aF(BookInfoActivity bookInfoActivity, String string) {
        this.b = bookInfoActivity;
        this.a = string;
    }

    @Override
    public final void onClick(View view) {
        BookInfoActivity.a(this.b, this.a);
    }
}
