package com.clilystudio.netbook.ui.game;

import android.view.View;

import com.clilystudio.netbook.exception.UnImplementException;
import com.clilystudio.netbook.model.GameLayoutRoot.ModuleLayout.ActivityItem;
import com.clilystudio.netbook.util.InsideLinkIntent;
import com.umeng.a.b;

final class L
        implements View.OnClickListener {
    L(K paramK, GameLayoutRoot.ModuleLayout.ActivityItem paramActivityItem) {
    }

    public final void onClick(View paramView) {
        try {
            InsideLinkIntent localInsideLinkIntent = new InsideLinkIntent(this.b.i.a.getActivity(), this.a.getLink());
            this.b.i.a.startActivity(localInsideLinkIntent);
            b.a(this.b.i.a.getActivity(), "game_center_layout_banner", this.a.getLink());
            return;
        } catch (UnImplementException localUnImplementException) {
            localUnImplementException.printStackTrace();
        }
    }
}

