
package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.VipPlan$Plan;
import java.util.List;
import uk.me.lewisdeane.ldialogs.h;

final class am implements View$OnClickListener {

    am(al al1, int int2)
    {
        b = al1;
        a = int2;
    }

    int a;     // final access specifier removed
    al b;     // final access specifier removed

    public final void onClick(View View1)
    {
        if( android.support.design.widget.am.a( (Activity) b.a ) != null )
        {
            h h2 = new h( (Context) b.a );

            h2.e = new StringBuilder( "\u786E\u5B9A\u8D2D\u4E70 " ).append( ((VipPlan$Plan) al.a( b ).get( a )).getName() ).append( " \u670D\u52A1\uFF1F" ).toString();
            h2.a( 2131034424, (DialogInterface$OnClickListener) new an( this ) ).b( 2131034129, null ).b();
        }
    }
}
