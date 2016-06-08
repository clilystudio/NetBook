package com.clilystudio.netbook.ui.post;

final class aW
        implements PopupWindow.OnDismissListener {
    aW(CommonPostListActivity paramCommonPostListActivity) {
    }

    public final void onDismiss() {
        CommonPostListActivity.l(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837721));
        CommonPostListActivity.m(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837721));
    }
}

