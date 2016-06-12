
package com.clilystudio.netbook.ui.game;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.clilystudio.netbook.model.Game;

final class h extends BroadcastReceiver {

    h(GameDetailActivity GameDetailActivity1)
    {
        a = GameDetailActivity1;
    }

    private GameDetailActivity a;

    public final void onReceive(Context Context1, Intent Intent2)
    {
        if( GameDetailActivity.e( a ) != null )
            GameDetailActivity.f( a );
    }
}
