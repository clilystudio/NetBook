
package com.clilystudio.netbook.ui.game;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.TextView;

final class j implements View$OnClickListener {

    j(GameDetailActivity GameDetailActivity1, TextView TextView2)
    {
        b = GameDetailActivity1;
        a = TextView2;
    }

    private TextView a;
    private GameDetailActivity b;

    public final void onClick(View View1)
    {
        GameDetailActivity.i( b ).findViewById( 2131493085 ).setVisibility( 0 );
        a.setText( (CharSequence) "\u52A0\u8F7D\u4E2D..." );
        GameDetailActivity.g( b );
    }
}
