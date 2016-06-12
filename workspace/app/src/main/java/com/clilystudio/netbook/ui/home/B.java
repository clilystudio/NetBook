
package com.clilystudio.netbook.ui.home;

import android.view.View;
import android.view.View$OnClickListener;

final class B implements View$OnClickListener {

    B(HomeShelfFragment HomeShelfFragment1)
    {
        a = HomeShelfFragment1;
    }

    private HomeShelfFragment a;

    public final void onClick(View View1)
    {
        HomeShelfFragment.b( a );
    }
}
