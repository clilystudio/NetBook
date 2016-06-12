
package com.clilystudio.netbook.widget;

import android.view.View;
import android.view.View$OnClickListener;

final class U implements View$OnClickListener {

    U(GiftGameGiftButton GiftGameGiftButton1, String String2)
    {
        b = GiftGameGiftButton1;
        a = String2;
    }

    private String a;
    private GiftGameGiftButton b;

    public final void onClick(View View1)
    {
        GiftGameGiftButton.a( b, a );
    }
}
