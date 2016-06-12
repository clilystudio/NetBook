
package com.clilystudio.netbook.adapter;

import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.model.Tweet;

final class I implements View$OnClickListener {

    I(G G1, Tweet Tweet2)
    {
        b = G1;
        a = Tweet2;
    }

    private Tweet a;
    private G b;

    public final void onClick(View View1)
    {
        Tweet Tweet2 = a;

        if( a.isRetween() )
            Tweet2 = a.getRefTweet();
        G.b( b, Tweet2 );
    }
}
