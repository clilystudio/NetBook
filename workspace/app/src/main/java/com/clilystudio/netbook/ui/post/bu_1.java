package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class bu implements View.OnClickListener {
    private /* synthetic */ PopupWindow a;
    private /* synthetic */ GirlTopicListActivity b;

    bu(GirlTopicListActivity girlTopicListActivity, PopupWindow popupWindow) {
        this.b = girlTopicListActivity;
        this.a = popupWindow;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
        GirlTopicListActivity.m(this.b).setText(2131034433);
        GirlTopicListActivity.b(this.b, "updated");
        GirlTopicListActivity.l(this.b).setRefreshing();
    }
}
