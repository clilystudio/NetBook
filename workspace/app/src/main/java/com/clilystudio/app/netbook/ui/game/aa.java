package com.clilystudio.app.netbook.ui.game;

import android.view.View;

import com.clilystudio.app.netbook.exception.UnImplementException;
import com.clilystudio.app.netbook.model.GameLayoutRoot.ModuleLayout.ActivityItem;
import com.clilystudio.app.netbook.util.InsideLinkIntent;
import com.umeng.a.b;

final class aa
        implements View.OnClickListener {
    aa(Z paramZ, GameLayoutRoot.ModuleLayout.ActivityItem paramActivityItem) {
    }

    public final void onClick(View paramView) {
        try {
            if ((GameMicroFragment.e(this.b.i.a) != null) && (GameMicroFragment.e(this.b.i.a).indexOf(this.a.getBannerImage()) >= 0))
                b.a(this.b.i.a.getActivity(), "micro_game_banner_click", "Banner " + GameMicroFragment.e(this.b.i.a).indexOf(this.a.getBannerImage()));
            InsideLinkIntent localInsideLinkIntent = new InsideLinkIntent(this.b.i.a.getActivity(), this.a.getLink(), true);
            this.b.i.a.startActivity(localInsideLinkIntent);
            return;
        } catch (UnImplementException localUnImplementException) {
            localUnImplementException.printStackTrace();
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.game.aa
 * JD-Core Version:    0.6.2
 */