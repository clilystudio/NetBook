package com.clilystudio.netbook.widget;

import android.view.View;

import com.clilystudio.netbook.view.a;

final class F
        implements View.OnClickListener {
    private /* synthetic */ a a;
    private /* synthetic */ GameGiftItemView b;

    F(GameGiftItemView gameGiftItemView, a a2) {
        this.b = gameGiftItemView;
        this.a = a2;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
        GameGiftItemView.a(this.b);
    }
}
