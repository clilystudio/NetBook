package com.clilystudio.netbook.ui.home;

import android.app.Activity;
import android.content.Context;
import com.clilystudio.netbook.am;
import android.view.View;

import com.clilystudio.netbook.model.InsideLink;
import com.clilystudio.netbook.model.ShelfMsg;
import com.clilystudio.netbook.util.InsideLinkIntent;

final class w implements View.OnClickListener {
    private /* synthetic */ ShelfMsg a;
    private /* synthetic */ InsideLink b;
    private /* synthetic */ HomeShelfFragment c;

    w(HomeShelfFragment homeShelfFragment, ShelfMsg shelfMsg, InsideLink insideLink) {
        this.c = homeShelfFragment;
        this.a = shelfMsg;
        this.b = insideLink;
    }

    @Override
    public final void onClick(View view) {
        if (this.a.login && am.a((Activity) this.c.getActivity()) == null) {
            return;
        }
        try {
            this.c.startActivity(new InsideLinkIntent((Context) this.c.getActivity(), this.b));
            b.a(this.c.getActivity(), "shelf_msg_click", this.b.getLabel());
            return;
        } catch (Exception var2_2) {
            var2_2.printStackTrace();
            return;
        }
    }
}
