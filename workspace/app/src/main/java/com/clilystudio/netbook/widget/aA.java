
package com.clilystudio.netbook.widget;

import android.view.View;
import android.view.View$OnClickListener;

final class aA implements View$OnClickListener {

    aA(ShareWarningView ShareWarningView1)
    {
        a = ShareWarningView1;
    }

    private ShareWarningView a;

    public final void onClick(View View1)
    {
        if( ShareWarningView.a( a ) != null )
            ShareWarningView.a( a ).a();
    }
}
