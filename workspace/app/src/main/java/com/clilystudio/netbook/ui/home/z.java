
package com.clilystudio.netbook.ui.home;

import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.adapter.HomeShelfAdapter;

final class z implements View$OnClickListener {

    z(HomeShelfFragment HomeShelfFragment1)
    {
        a = HomeShelfFragment1;
    }

    private HomeShelfFragment a;

    public final void onClick(View View1)
    {
        if( HomeShelfFragment.a( a ) != null )
            HomeShelfFragment.a( a ).d();
    }
}
