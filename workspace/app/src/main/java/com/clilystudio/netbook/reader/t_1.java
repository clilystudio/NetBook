
package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.view.View;
import android.view.View$OnClickListener;
import uk.me.lewisdeane.ldialogs.h;

final class t implements View$OnClickListener {

    t(o o1)
    {
        a = o1;
    }

    private o a;

    public final void onClick(View View1)
    {
        new h( (Context) o.a( a ) ).a( true ).a( 2131034317 ).b( 2131034316 ).a( "\u786E\u5B9A", (DialogInterface$OnClickListener) new u( this ) ).b();
    }
}
