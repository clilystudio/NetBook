package com.clilystudio.app.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class bG
        implements View.OnClickListener {
    bG(GirlTopicListActivity paramGirlTopicListActivity, PopupWindow paramPopupWindow) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        GirlTopicListActivity.b(this.b, true);
        GirlTopicListActivity.k(this.b).setText("精品");
        GirlTopicListActivity.a(this.b, "all");
        GirlTopicListActivity.l(this.b).setRefreshing();
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.bG
 * JD-Core Version:    0.6.2
 */