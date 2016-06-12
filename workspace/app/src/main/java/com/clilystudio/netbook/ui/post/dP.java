
package com.clilystudio.netbook.ui.post;

import android.support.design.widget.FloatingActionButton;
import android.view.View;
import android.view.View$OnClickListener;

final class dP implements View$OnClickListener {

    dP(TweetTabActivity TweetTabActivity1)
    {
        a = TweetTabActivity1;
    }

    private TweetTabActivity a;

    public final void onClick(View View1)
    {
        if( TweetTabActivity.c( a ) )
        {
            TweetTabActivity.a( a, false );
            TweetTabActivity.d( a );
            TweetTabActivity.e( a ).setContentDescription( (CharSequence) "\u5173\u95ED\u9009\u9879" );
        }
        else
        {
            TweetTabActivity.f( a );
            TweetTabActivity.a( a, true );
            TweetTabActivity.g( a );
            TweetTabActivity.e( a ).setContentDescription( (CharSequence) "\u5C55\u5F00\u9009\u9879" );
        }
    }
}
