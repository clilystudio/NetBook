package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class bu
        implements View.OnClickListener {
    bu(GirlTopicListActivity paramGirlTopicListActivity, PopupWindow paramPopupWindow) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        GirlTopicListActivity.m(this.b).setText(2131034433);
        GirlTopicListActivity.b(this.b, "updated");
        GirlTopicListActivity.l(this.b).setRefreshing();
    }
}

