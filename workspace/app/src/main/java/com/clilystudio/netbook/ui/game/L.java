package com.clilystudio.netbook.ui.game;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.exception.UnImplementException;
import com.clilystudio.netbook.model.GameLayoutRoot$ModuleLayout$ActivityItem;
import com.clilystudio.netbook.util.InsideLinkIntent;

final class L implements View$OnClickListener {

    private GameLayoutRoot$ModuleLayout$ActivityItem a;
    private K b;
    L(K K1, GameLayoutRoot$ModuleLayout$ActivityItem ActivityItem2) {
        b = K1;
        a = ActivityItem2;
    }

    public final void onClick(View View1) {
        try {
            Object Object2 = new InsideLinkIntent((Context) b.i.a.getActivity(), a.getLink());

            b.i.a.startActivity((Intent) Object2);
            com.clilystudio.netbook.umeng.a.b.a((Context) b.i.a.getActivity(), "game_center_layout_banner", a.getLink());
        } catch (UnImplementException UnImplementException3) {
            UnImplementException3.printStackTrace();
            return;
        }
    }
}
