
package com.clilystudio.netbook.ui.ugcbook;

import android.view.View;
import android.view.View$OnClickListener;

final class V implements View$OnClickListener {

    V(UGCGuideSelectBookActivity UGCGuideSelectBookActivity1)
    {
        a = UGCGuideSelectBookActivity1;
    }

    private UGCGuideSelectBookActivity a;

    public final void onClick(View View1)
    {
        a.finish();
    }
}
