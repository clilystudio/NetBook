
package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;

final class dT implements View$OnClickListener {

    dT(TweetTabActivity TweetTabActivity1)
    {
        a = TweetTabActivity1;
    }

    private TweetTabActivity a;

    public final void onClick(View View1)
    {
        if( TweetTabActivity.c( a ) )
        {
            TweetTabActivity.d( a );
            TweetTabActivity.a( a, false );
        }
    }
}
