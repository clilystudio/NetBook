
package com.clilystudio.netbook.adapter;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.model.Tweet;
import uk.me.lewisdeane.ldialogs.h;

final class N implements View$OnClickListener {

    N(G G1, R R2, Tweet Tweet3)
    {
        c = G1;
        a = R2;
        b = Tweet3;
    }

    R a;     // final access specifier removed
    Tweet b;     // final access specifier removed
    G c;     // final access specifier removed

    public final void onClick(View View1)
    {
        h h2 = new h( a.q.getContext() ).a( true );

        h2.e = "\u786E\u5B9A\u5220\u9664\u52A8\u6001\uFF1F";
        h2.b( "\u53D6\u6D88", (DialogInterface$OnClickListener) new P( this ) ).a( "\u786E\u5B9A", (DialogInterface$OnClickListener) new O( this ) ).b();
    }
}
