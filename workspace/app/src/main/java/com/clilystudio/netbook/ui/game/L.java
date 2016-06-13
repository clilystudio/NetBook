package com.clilystudio.netbook.ui.game;

import android.content.Context;
import android.view.View;

import com.clilystudio.netbook.exception.UnImplementException;
import com.clilystudio.netbook.model.GameLayoutRoot$ModuleLayout$ActivityItem;
import com.clilystudio.netbook.util.InsideLinkIntent;

final class L
        implements View.OnClickListener {
    private /* synthetic */ GameLayoutRoot$ModuleLayout$ActivityItem a;
    private /* synthetic */ K b;

    L(K k, GameLayoutRoot$ModuleLayout$ActivityItem activityItem) {
        this.b = k;
        this.a = activityItem;
    }

    @Override
    public final void onClick(View view) {
        try {
            InsideLinkIntent insideLinkIntent = new InsideLinkIntent((Context) this.b.i.a.getActivity(), this.a.getLink());
            this.b.i.a.startActivity(insideLinkIntent);
            b.a(this.b.i.a.getActivity(), "game_center_layout_banner", this.a.getLink());
            return;
        } catch (UnImplementException var3_3) {
            var3_3.printStackTrace();
            return;
        }
    }
}
