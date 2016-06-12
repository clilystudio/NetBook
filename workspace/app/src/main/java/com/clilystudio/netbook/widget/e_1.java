
package com.clilystudio.netbook.widget;

import android.view.View;
import android.view.View$OnClickListener;

final class e implements View$OnClickListener {

    e(AbsDownloadButton AbsDownloadButton1, byte byte2)
    {
        this( AbsDownloadButton1 );
    }

    private AbsDownloadButton a;

    private e(AbsDownloadButton AbsDownloadButton1)
    {
        a = AbsDownloadButton1;
    }

    public final void onClick(View View1)
    {
        AbsDownloadButton.a( a );
    }
}
