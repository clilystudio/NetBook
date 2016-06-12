
package com.clilystudio.netbook.ui.game;

import android.os.AsyncTask$Status;
import com.clilystudio.netbook.widget.av;

final class l implements av {

    l(GameDetailActivity GameDetailActivity1)
    {
        a = GameDetailActivity1;
    }

    private GameDetailActivity a;

    public final void a()
    {
        if( GameDetailActivity.n( a ) == null || GameDetailActivity.n( a ).getStatus() == AsyncTask$Status.FINISHED )
            GameDetailActivity.g( a );
    }
}
