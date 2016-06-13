package com.clilystudio.netbook.widget;

import android.view.View;

import com.clilystudio.netbook.view.a;

final class V
        implements View.OnClickListener {
    private /* synthetic */ a a;
    private /* synthetic */ GiftGameGiftButton b;

    V(GiftGameGiftButton giftGameGiftButton, a a2) {
        this.b = giftGameGiftButton;
        this.a = a2;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
        GiftGameGiftButton.a(this.b);
    }
}
