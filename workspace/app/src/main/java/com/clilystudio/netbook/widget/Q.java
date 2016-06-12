
package com.clilystudio.netbook.widget;

import android.content.Context;
import android.support.design.widget.am;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.model.Game;

final class Q implements View$OnClickListener {

    Q(GameMicroLayoutItemView GameMicroLayoutItemView1, Game Game2)
    {
        b = GameMicroLayoutItemView1;
        a = Game2;
    }

    private Game a;
    private GameMicroLayoutItemView b;

    public final void onClick(View View1)
    {
        if( b.a )
            com.clilystudio.netbook.umeng.a.b.a( b.getContext(), "micro_game_continue_click", a.getName() );
        else
            com.clilystudio.netbook.umeng.a.b.a( b.getContext(), "micro_game_play_click", a.getName() );
        am.a( b.getContext(), a );
    }
}
