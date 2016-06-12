
package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Context;
import android.support.design.widget.am;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.model.GiftGame;
import com.clilystudio.netbook.util.e;

final class W implements View$OnClickListener {

    W(GiftGameGiftButton GiftGameGiftButton1, com.clilystudio.netbook.view.a a2, String String3)
    {
        c = GiftGameGiftButton1;
        a = a2;
        b = String3;
    }

    private com.clilystudio.netbook.view.a a;
    private String b;
    private GiftGameGiftButton c;

    public final void onClick(View View1)
    {
        a.dismiss();
        am.a( c.getContext(), b );
        e.a( (Activity) c.getContext(), "\u5DF2\u590D\u5236" );
        if( GiftGameGiftButton.b( c ) != null )
            am.d( c.getContext(), GiftGameGiftButton.b( c ).getAndroidPackageName() );
        else
            e.a( (Activity) c.getContext(), "\u542F\u52A8\u6E38\u620F\u5931\u8D25" );
    }
}
