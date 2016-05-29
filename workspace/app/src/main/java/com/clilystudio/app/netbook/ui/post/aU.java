package com.clilystudio.app.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class aU
        implements View.OnClickListener {
    aU(CommonPostListActivity paramCommonPostListActivity, PopupWindow paramPopupWindow) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        CommonPostListActivity.k(this.b).setText("最新发布");
        CommonPostListActivity.b(this.b, "created");
        CommonPostListActivity.j(this.b).setVisibility(0);
        CommonPostListActivity.j(this.b).setRefreshing();
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.aU
 * JD-Core Version:    0.6.2
 */