package com.clilystudio.netbook.ui.game;

import android.view.View;

import com.clilystudio.netbook.exception.UnImplementException;
import com.clilystudio.netbook.model.GameLayoutRoot$ModuleLayout$ActivityItem;
import com.clilystudio.netbook.util.InsideLinkIntent;

final class aa
        implements View.OnClickListener {
    private /* synthetic */ GameLayoutRoot$ModuleLayout$ActivityItem a;
    private /* synthetic */ Z b;

    aa(Z z, GameLayoutRoot$ModuleLayout$ActivityItem activityItem) {
        this.b = z;
        this.a = activityItem;
    }

    @Override
    public final void onClick(View view) {
        try {
            if (GameMicroFragment.e(this.b.i.a) != null && GameMicroFragment.e(this.b.i.a).indexOf(this.a.getBannerImage()) >= 0) {
                b.a(this.b.i.a.getActivity(), "micro_game_banner_click", "Banner " + GameMicroFragment.e(this.b.i.a).indexOf(this.a.getBannerImage()));
            }
            InsideLinkIntent insideLinkIntent = new InsideLinkIntent(this.b.i.a.getActivity(), this.a.getLink(), true);
            this.b.i.a.startActivity(insideLinkIntent);
            return;
        } catch (UnImplementException var2_3) {
            var2_3.printStackTrace();
            return;
        }
    }
}
