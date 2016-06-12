
package com.clilystudio.netbook.ui.home;

import android.widget.PopupWindow$OnDismissListener;

final class d implements PopupWindow$OnDismissListener {

    d(HomeActivity HomeActivity1)
    {
        a = HomeActivity1;
    }

    private HomeActivity a;

    public final void onDismiss()
    {
        HomeActivity.e( a );
    }
}
