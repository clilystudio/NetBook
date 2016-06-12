
package com.clilystudio.netbook.widget;

import com.c.a.D;
import com.c.a.w;

final class ag implements D {

    ag(LoadingProgressView LoadingProgressView1)
    {
        a = LoadingProgressView1;
    }

    private LoadingProgressView a;

    public final void a(w w1)
    {
        float float2 = ((Float) w1.f()).floatValue();

        a.setProgress( float2 );
    }
}
