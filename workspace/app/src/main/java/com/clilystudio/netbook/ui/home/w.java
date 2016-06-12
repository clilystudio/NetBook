
package com.clilystudio.netbook.ui.home;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.support.design.widget.am;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.InsideLink;
import com.clilystudio.netbook.model.ShelfMsg;
import com.clilystudio.netbook.util.InsideLinkIntent;

final class w implements View$OnClickListener {

    w(HomeShelfFragment HomeShelfFragment1, ShelfMsg ShelfMsg2, InsideLink InsideLink3)
    {
        c = HomeShelfFragment1;
        a = ShelfMsg2;
        b = InsideLink3;
    }

    private ShelfMsg a;
    private InsideLink b;
    private HomeShelfFragment c;

    public final void onClick(View View1)
    {
        if( !a.login || am.a( (Activity) c.getActivity() ) != null )
        {
            try
            {
                c.startActivity( (Intent) new InsideLinkIntent( (Context) c.getActivity(), b ) );
                com.clilystudio.netbook.umeng.a.b.a( (Context) c.getActivity(), "shelf_msg_click", b.getLabel() );
            }
            catch( Exception Exception2 )
            {
                Exception2.printStackTrace();
                return;
            }
        }
    }
}
