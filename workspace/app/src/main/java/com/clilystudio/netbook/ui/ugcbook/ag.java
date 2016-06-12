
package com.clilystudio.netbook.ui.ugcbook;

import android.view.View;
import android.view.View$OnClickListener;

final class ag implements View$OnClickListener {

    ag(UGCMainActivity UGCMainActivity1)
    {
        a = UGCMainActivity1;
    }

    private UGCMainActivity a;

    public final void onClick(View View1)
    {
        UGCMainActivity.i( a );
    }
}
