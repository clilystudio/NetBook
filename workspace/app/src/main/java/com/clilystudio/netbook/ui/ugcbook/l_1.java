
package com.clilystudio.netbook.ui.ugcbook;

import android.view.View;
import android.view.View$OnClickListener;

final class l implements View$OnClickListener {

    l(UGCDetailActivity UGCDetailActivity1)
    {
        a = UGCDetailActivity1;
    }

    private UGCDetailActivity a;

    public final void onClick(View View1)
    {
        UGCDetailActivity.f( a );
    }
}
