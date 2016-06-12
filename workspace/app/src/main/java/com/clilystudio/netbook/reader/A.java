package com.clilystudio.netbook.reader;

import android.view.View;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.model.Advert;

final class A implements View$OnClickListener {

    private Advert a;

    A(o o1, Advert Advert2) {
        a = Advert2;
    }

    public final void onClick(View View1) {
        a.processClick(View1);
    }
}
