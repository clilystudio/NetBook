
package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.ui.game.GameDetailActivity;

final class P implements View$OnClickListener {

    P(GameMicroLayoutItemView GameMicroLayoutItemView1, Game Game2)
    {
        b = GameMicroLayoutItemView1;
        a = Game2;
    }

    private Game a;
    private GameMicroLayoutItemView b;

    public final void onClick(View View1)
    {
        b.getContext().startActivity( GameDetailActivity.a( b.getContext(), a.get_id(), true, b.a ) );
    }
}
