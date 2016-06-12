
package com.clilystudio.netbook.widget;

import com.c.a.D;
import com.c.a.w;

final class ae implements D {

    ae(LoadingProgressView LoadingProgressView1)
    {
        a = LoadingProgressView1;
    }

    private LoadingProgressView a;

    public final void a(w w1)
    {
        if( !com.clilystudio.netbook.widget.LoadingProgressView.a( a ) )
        {
            LoadingProgressView.a( a, ((Float) w1.f()).floatValue() );
            a.setProgress( LoadingProgressView.b( a ) );
        }
    }
}
