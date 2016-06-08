package com.clilystudio.netbook.widget;

import android.view.View;

import com.clilystudio.netbook.view.a;

final class F
        implements View.OnClickListener {
    F(GameGiftItemView paramGameGiftItemView, a parama) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        GameGiftItemView.a(this.b);
    }
}

