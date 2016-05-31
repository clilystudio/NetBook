package com.clilystudio.app.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class bw
        implements View.OnClickListener {
    bw(GirlTopicListActivity paramGirlTopicListActivity, PopupWindow paramPopupWindow) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        GirlTopicListActivity.m(this.b).setText(2131034434);
        GirlTopicListActivity.b_initContentView(this.b, "comment-count");
        GirlTopicListActivity.l(this.b).setRefreshing();
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.bw
 * JD-Core Version:    0.6.2
 */