
package com.clilystudio.netbook.ui.game;

import android.content.Context;
import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View$OnClickListener;

final class ac implements View$OnClickListener {

    ac(GameMicroFragment$LayoutAdapter$PromotionViewPager PromotionViewPager1, GameMicroFragment$LayoutAdapter LayoutAdapter2, String String3)
    {
        b = PromotionViewPager1;
        a = String3;
    }

    private String a;
    private GameMicroFragment$LayoutAdapter$PromotionViewPager b;

    public final void onClick(View View1)
    {
        b.k.a.startActivity( GameDetailActivity.a( (Context) b.k.a.getActivity(), a, true, false ) );
    }
}
