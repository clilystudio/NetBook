package com.clilystudio.netbook.ui.post;

final class bx
        implements PopupWindow.OnDismissListener {
    bx(GirlTopicListActivity paramGirlTopicListActivity) {
    }

    public final void onDismiss() {
        GirlTopicListActivity.b(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837721));
        GirlTopicListActivity.c(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837721));
    }
}

