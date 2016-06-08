package com.clilystudio.netbook.ui.game;

import android.view.View;

final class ac
        implements View.OnClickListener {
    ac(GameMicroFragment.LayoutAdapter.PromotionViewPager paramPromotionViewPager, GameMicroFragment.LayoutAdapter paramLayoutAdapter, String paramString) {
    }

    public final void onClick(View paramView) {
        this.b.k.a.startActivity(GameDetailActivity.a(this.b.k.a.getActivity(), this.a, true, false));
    }
}

