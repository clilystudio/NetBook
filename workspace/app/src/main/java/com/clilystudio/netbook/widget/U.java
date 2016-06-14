package com.clilystudio.netbook.widget;

import android.view.View;

final class U implements View.OnClickListener {
    private /* synthetic */ String a;
    private /* synthetic */ GiftGameGiftButton b;

    U(GiftGameGiftButton giftGameGiftButton, String string) {
        this.b = giftGameGiftButton;
        this.a = string;
    }

    @Override
    public final void onClick(View view) {
        GiftGameGiftButton.a(this.b, this.a);
    }
}
