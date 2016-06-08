package com.clilystudio.netbook.ui.ugcbook;

import android.view.View;

final class z
        implements View.OnClickListener {
    z(y paramy, int paramInt) {
    }

    public final void onClick(View paramView) {
        UGCGuideAddBookActivity.a(this.b.a, this.a);
        this.b.notifyDataSetChanged();
    }
}

