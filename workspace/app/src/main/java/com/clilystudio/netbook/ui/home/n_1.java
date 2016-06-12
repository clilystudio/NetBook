
package com.clilystudio.netbook.ui.home;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View$OnClickListener;

final class n implements View$OnClickListener {

    n(HomeShelfFragment HomeShelfFragment1)
    {
        a = HomeShelfFragment1;
    }

    private HomeShelfFragment a;

    public final void onClick(View View1)
    {
        ((HomeActivity) a.getActivity()).g();
    }
}
