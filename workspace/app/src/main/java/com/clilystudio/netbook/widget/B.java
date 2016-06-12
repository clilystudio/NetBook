
package com.clilystudio.netbook.widget;

import android.view.View;
import android.view.View$OnClickListener;

final class B implements View$OnClickListener {

    B(GameDownloadButton GameDownloadButton1, byte byte2)
    {
        this( GameDownloadButton1 );
    }

    private GameDownloadButton a;

    private B(GameDownloadButton GameDownloadButton1)
    {
        a = GameDownloadButton1;
    }

    public final void onClick(View View1)
    {
        a.g();
    }
}
