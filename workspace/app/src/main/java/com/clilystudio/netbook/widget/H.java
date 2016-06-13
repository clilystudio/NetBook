package com.clilystudio.netbook.widget;

import android.view.View;

final class H
        implements View.OnClickListener {
    private /* synthetic */ String a;
    private /* synthetic */ GameGiftItemView b;

    H(GameGiftItemView gameGiftItemView, String string) {
        this.b = gameGiftItemView;
        this.a = string;
    }

    @Override
    public final void onClick(View view) {
        GameGiftItemView.a(this.b, this.a);
    }
}
