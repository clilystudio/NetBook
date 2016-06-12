
package com.clilystudio.netbook.ui.home;

import android.view.KeyEvent;
import android.view.View;
import android.view.View$OnKeyListener;

final class c implements View$OnKeyListener {

    c(HomeActivity HomeActivity1)
    {
        a = HomeActivity1;
    }

    private HomeActivity a;

    public final boolean onKey(View View1, int int2, KeyEvent KeyEvent3)
    {
        if( KeyEvent3.getAction() != 0 || int2 != 82 || KeyEvent3.getRepeatCount() != 0 )
            return false;
        HomeActivity.d( a );
        return true;
    }
}
