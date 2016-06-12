
package com.clilystudio.netbook.ui.game;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.model.Game;

final class V implements View$OnClickListener {

    V(T T1, Game Game2)
    {
        b = T1;
        a = Game2;
    }

    private Game a;
    private T b;

    public final void onClick(View View1)
    {
        b.a.startActivity( GameDetailActivity.a( (Context) b.a, a.get_id(), true, true ) );
    }
}
