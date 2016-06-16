package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class bv implements View.OnClickListener {
    private /* synthetic */ PopupWindow a;
    private /* synthetic */ GirlTopicListActivity b;

    bv(GirlTopicListActivity girlTopicListActivity, PopupWindow popupWindow) {
        this.b = girlTopicListActivity;
        this.a = popupWindow;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
        GirlTopicListActivity.m(this.b).setText(R.string.post_sort_create);
        GirlTopicListActivity.b(this.b, "created");
        GirlTopicListActivity.l(this.b).setRefreshing();
    }
}
