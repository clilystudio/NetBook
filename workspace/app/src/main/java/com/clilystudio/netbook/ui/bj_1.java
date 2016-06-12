
package com.clilystudio.netbook.ui;

import android.view.View;
import android.view.View$OnClickListener;

final class bj implements View$OnClickListener {

    bj(MhdListActivity MhdListActivity1)
    {
        a = MhdListActivity1;
    }

    private MhdListActivity a;

    public final void onClick(View View1)
    {
        MhdListActivity.a( a );
    }
}
