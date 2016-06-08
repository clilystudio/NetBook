package com.clilystudio.netbook.adapter;

import android.widget.CompoundButton;

final class q
        implements CompoundButton.OnCheckedChangeListener {
    q(HomeShelfAdapter paramHomeShelfAdapter, int paramInt) {
    }

    public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean) {
        if (HomeShelfAdapter.a(this.b))
            return;
        HomeShelfAdapter.b(this.b)[this.a] = paramBoolean;
        HomeShelfAdapter.a(this.b, this.a);
    }
}

