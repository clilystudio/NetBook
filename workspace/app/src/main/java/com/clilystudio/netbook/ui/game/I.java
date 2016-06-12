
package com.clilystudio.netbook.ui.game;

import android.content.Context;
import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.model.Game;

final class I implements View$OnClickListener {

    I(GameLayoutFragment$LayoutAdapter LayoutAdapter1)
    {
        a = LayoutAdapter1;
    }

    private GameLayoutFragment$LayoutAdapter a;

    public final void onClick(View View1)
    {
        a.a.startActivity( GameDetailActivity.a( (Context) a.a.getActivity(), GameLayoutFragment.b( a.a ).get_id() ) );
        com.clilystudio.netbook.umeng.a.b.a( (Context) a.a.getActivity(), "game_center_layout_promotion", GameLayoutFragment.b( a.a ).getName() );
    }
}
