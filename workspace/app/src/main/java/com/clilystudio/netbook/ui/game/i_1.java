
package com.clilystudio.netbook.ui.game;

import android.content.Context;
import android.support.design.widget.am;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.umeng.a.b;
import com.clilystudio.netbook.model.Game;

final class i implements View$OnClickListener {

    i(GameDetailActivity GameDetailActivity1)
    {
        a = GameDetailActivity1;
    }

    private GameDetailActivity a;

    public final void onClick(View View1)
    {
        if( GameDetailActivity.h( a ) )
            b.a( (Context) a, "micro_game_continue_click", GameDetailActivity.e( a ).getName() );
        else
            b.a( (Context) a, "micro_game_play_click", GameDetailActivity.e( a ).getName() );
        am.a( (Context) a, GameDetailActivity.e( a ) );
    }
}
