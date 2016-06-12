
package com.clilystudio.netbook.ui.post;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.model.Follower;

final class bk implements View$OnClickListener {

    bk(bj bj1, int int2)
    {
        b = bj1;
        a = int2;
    }

    private int a;
    private bj b;

    public final void onClick(View View1)
    {
        Follower Follower2 = (Follower) b.getItem( a );
        Intent Intent3 = OtherUserActivity.a( (Context) b.a );

        Intent3.putExtra( "USER_ID", Follower2.get_id() );
        Intent3.putExtra( "USER_NAME", Follower2.getNickname() );
        b.a.startActivity( Intent3 );
    }
}
