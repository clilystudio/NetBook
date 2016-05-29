package com.clilystudio.app.netbook.ui.home;

import android.view.View;

import com.clilystudio.app.netbook.model.InsideLink;
import com.clilystudio.app.netbook.model.ShelfMsg;
import com.clilystudio.app.netbook.util.InsideLinkIntent;
import com.clilystudio.app.netbook.util.am_CommonUtils;
import com.umeng.a.b;

final class w
        implements View.OnClickListener {
    w(HomeShelfFragment paramHomeShelfFragment, ShelfMsg paramShelfMsg, InsideLink paramInsideLink) {
    }

    public final void onClick(View paramView) {
        if ((this.a.login) && (am_CommonUtils.a_isTaskStoped(this.c.getActivity()) == null))
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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.home.w
 * JD-Core Version:    0.6.2
 */