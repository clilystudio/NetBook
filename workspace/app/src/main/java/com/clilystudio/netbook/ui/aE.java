package com.clilystudio.netbook.ui;

import android.view.View;

import com.clilystudio.netbook.model.Advert;

final class aE implements View.OnClickListener {
    private /* synthetic */ Advert a;

    aE(BookInfoActivity bookInfoActivity, Advert advert) {
        this.a = advert;
    }

    @Override
    public final void onClick(View view) {
        this.a.processClick(view);
    }
}
