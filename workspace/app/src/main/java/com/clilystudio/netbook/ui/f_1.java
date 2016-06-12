
package com.clilystudio.netbook.ui;

import android.content.Context;
import com.clilystudio.netbook.util.as;
import com.clilystudio.netbook.util.e;
import com.ximalaya.ting.android.opensdk.player.service.IXmPlayerStatusListener;

class f implements aa {

    f(AudioBookPlayActivity AudioBookPlayActivity1)
    {
        a = AudioBookPlayActivity1;
    }

    private AudioBookPlayActivity a;

    public final void a()
    {
        as.b( AudioBookPlayActivity.a( a ) );
        as.i();
        com.clilystudio.netbook.event.i.a().c( new com.clilystudio.netbook.event.b() );
        e.b( (Context) a );
        AudioBookPlayActivity.c( a );
    }
}
