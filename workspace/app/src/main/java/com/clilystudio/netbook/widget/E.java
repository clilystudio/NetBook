package com.clilystudio.netbook.widget;

import android.view.View;

final class E implements View.OnClickListener {
    private /* synthetic */ GameGiftItemView a;

    E(GameGiftItemView gameGiftItemView) {
        this.a = gameGiftItemView;
    }

    @Override
    public final void onClick(View view) {
        this.a.a();
    }
}
