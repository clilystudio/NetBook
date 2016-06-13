package com.clilystudio.netbook.ui.game;

import android.view.View;

final class ac
        implements View.OnClickListener {
    private /* synthetic */ String a;
    private /* synthetic */ GameMicroFragment$LayoutAdapter$PromotionViewPager b;

    ac(GameMicroFragment$LayoutAdapter$PromotionViewPager promotionViewPager, GameMicroFragment$LayoutAdapter layoutAdapter, String string) {
        this.b = promotionViewPager;
        this.a = string;
    }

    @Override
    public final void onClick(View view) {
        this.b.k.a.startActivity(GameDetailActivity.a(this.b.k.a.getActivity(), this.a, true, false));
    }
}
