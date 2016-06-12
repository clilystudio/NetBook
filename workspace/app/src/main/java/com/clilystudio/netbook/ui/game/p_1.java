
package com.clilystudio.netbook.ui.game;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.TextView;
import com.clilystudio.netbook.model.GamePostRoot$GamePost;

final class p implements View$OnClickListener {

    p(n n1, TextView TextView2, GamePostRoot$GamePost GamePost3, String String4)
    {
        d = n1;
        a = TextView2;
        b = GamePost3;
        c = String4;
    }

    private TextView a;
    private GamePostRoot$GamePost b;
    private String c;
    private n d;

    public final void onClick(View View1)
    {
        GameDetailActivity.a( d.a, View1, a, b.getLikeCount(), c );
    }
}
