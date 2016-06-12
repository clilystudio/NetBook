
package com.clilystudio.netbook.ui.ugcbook;

import android.widget.PopupWindow$OnDismissListener;

final class ab implements PopupWindow$OnDismissListener {

    ab(UGCMainActivity UGCMainActivity1)
    {
        a = UGCMainActivity1;
    }

    private UGCMainActivity a;

    public final void onDismiss()
    {
        UGCMainActivity.g( a );
    }
}
