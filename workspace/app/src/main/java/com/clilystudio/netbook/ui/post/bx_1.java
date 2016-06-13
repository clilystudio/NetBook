package com.clilystudio.netbook.ui.post;

import android.widget.PopupWindow;

final class bx
        implements PopupWindow.OnDismissListener {
    private /* synthetic */ GirlTopicListActivity a;

    bx(GirlTopicListActivity girlTopicListActivity) {
        this.a = girlTopicListActivity;
    }

    @Override
    public final void onDismiss() {
        GirlTopicListActivity.b(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837721));
        GirlTopicListActivity.c(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837721));
    }
}
