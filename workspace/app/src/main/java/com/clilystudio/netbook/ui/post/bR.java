
package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import android.support.design.widget.am;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.User;
import java.util.List;

final class bR implements View$OnClickListener {

    bR(MyTweetFragment MyTweetFragment1)
    {
        a = MyTweetFragment1;
    }

    MyTweetFragment a;     // final access specifier removed

    public final void onClick(View View1)
    {
        if( MyTweetFragment.j( a ) == null && MyTweetFragment.k( a ) != 0 )
        {
            bV bV3;
            String[] String_1darray4;

            if( MyTweetFragment.l( a ) != null )
                MyTweetFragment.l( a ).cancel( true );
            MyTweetFragment.a( a, new bV( a, (Runnable) new bS( this ) ) );
            bV3 = MyTweetFragment.l( a );
            String_1darray4 = new String[1];
            String_1darray4[0] = am.e().getUser().getId();
            bV3.b( String_1darray4 );
        }
        else
            MyTweetFragment.m( a );
    }
}
