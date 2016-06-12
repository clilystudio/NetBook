
package com.clilystudio.netbook.ui;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class J extends BroadcastReceiver {

    J(BaseActivity BaseActivity1)
    {
        a = BaseActivity1;
    }

    private BaseActivity a;

    public final void onReceive(Context Context1, Intent Intent2)
    {
        a.recreate();
    }
}
