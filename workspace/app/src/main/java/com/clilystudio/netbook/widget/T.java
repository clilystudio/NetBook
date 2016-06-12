
package com.clilystudio.netbook.widget;

import android.view.View;
import android.view.View$OnClickListener;

final class T implements View$OnClickListener {

    T(GiftGameGameButton GiftGameGameButton1, byte byte2)
    {
        this( GiftGameGameButton1 );
    }

    private GiftGameGameButton a;

    private T(GiftGameGameButton GiftGameGameButton1)
    {
        a = GiftGameGameButton1;
    }

    public final void onClick(View View1)
    {
        a.d();
    }
}
