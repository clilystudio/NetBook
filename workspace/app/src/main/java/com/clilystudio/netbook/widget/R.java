
package com.clilystudio.netbook.widget;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.model.GiftGame;
import java.io.File;

final class R implements View$OnClickListener {

    R(GiftGameGameButton GiftGameGameButton1, byte byte2)
    {
        this( GiftGameGameButton1 );
    }

    private GiftGameGameButton a;

    private R(GiftGameGameButton GiftGameGameButton1)
    {
        a = GiftGameGameButton1;
    }

    public final void onClick(View View1)
    {
        GiftGameGameButton.a( a );
        com.clilystudio.netbook.hpay100.a.a.a( a.getContext(), new File( Uri.parse( GiftGameGameButton.b( a ).getLocalFileUri() ).getPath() ) );
    }
}
