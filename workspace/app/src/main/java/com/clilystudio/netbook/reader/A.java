package com.clilystudio.netbook.reader;

import android.view.View;

import com.clilystudio.netbook.model.Advert;

final class A implements View.OnClickListener {
    private /* synthetic */ Advert a;

    A(o o2, Advert advert) {
        this.a = advert;
    }

    @Override
    public final void onClick(View view) {
        this.a.processClick(view);
    }
}
