
package com.clilystudio.netbook.ui;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class bn extends BroadcastReceiver {

    bn(MysteryActivity MysteryActivity1)
    {
        a = MysteryActivity1;
    }

    private MysteryActivity a;

    public final void onReceive(Context Context1, Intent Intent2)
    {
        MysteryActivity.a( a );
    }
}
