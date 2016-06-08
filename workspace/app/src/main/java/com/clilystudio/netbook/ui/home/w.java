package com.clilystudio.netbook.ui.home;

import android.support.design.widget.am;
import android.view.View;

import com.clilystudio.netbook.model.InsideLink;
import com.clilystudio.netbook.model.ShelfMsg;
import com.clilystudio.netbook.util.InsideLinkIntent;
import com.umeng.a.b;

final class w
        implements View.OnClickListener {
    w(HomeShelfFragment paramHomeShelfFragment, ShelfMsg paramShelfMsg, InsideLink paramInsideLink) {
    }

    public final void onClick(View paramView) {
        if ((this.a.login) && (am.a(this.c.getActivity()) == null))
            return;
        try {
            this.c.startActivity(new InsideLinkIntent(this.c.getActivity(), this.b));
            b.a(this.c.getActivity(), "shelf_msg_click", this.b.getLabel());
            return;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
    }
}

