
package com.clilystudio.netbook.ui.game;

import android.view.View;
import android.view.View$OnClickListener;

final class g implements View$OnClickListener {

    g(GameDetailActivity GameDetailActivity1)
    {
        a = GameDetailActivity1;
    }

    private GameDetailActivity a;

    public final void onClick(View View1)
    {
        GameDetailActivity.d( a );
    }
}
