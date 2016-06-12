
package com.clilystudio.netbook.ui.game;

import android.content.Context;
import android.support.design.widget.am;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.model.Game;

final class U implements View$OnClickListener {

    U(T T1, Game Game2)
    {
        b = T1;
        a = Game2;
    }

    private Game a;
    private T b;

    public final void onClick(View View1)
    {
        am.b( (Context) b.a, a );
    }
}
