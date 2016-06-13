package com.clilystudio.netbook.adapter;

import android.widget.CompoundButton;

final class q
        implements CompoundButton.OnCheckedChangeListener {
    private /* synthetic */ int a;
    private /* synthetic */ HomeShelfAdapter b;

    q(HomeShelfAdapter homeShelfAdapter, int n) {
        this.b = homeShelfAdapter;
        this.a = n;
    }

    @Override
    public final void onCheckedChanged(CompoundButton compoundButton, boolean bl) {
        if (HomeShelfAdapter.a(this.b)) {
            return;
        }
        HomeShelfAdapter.b((HomeShelfAdapter) this.b)[this.a] = bl;
        HomeShelfAdapter.a(this.b, this.a);
    }
}
