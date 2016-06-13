package com.clilystudio.netbook.ui.ugcbook;

import android.widget.CompoundButton;

final class Y
        implements CompoundButton.OnCheckedChangeListener {
    private /* synthetic */ int a;
    private /* synthetic */ X b;

    Y(X x, int n) {
        this.b = x;
        this.a = n;
    }

    @Override
    public final void onCheckedChanged(CompoundButton compoundButton, boolean bl) {
        if (X.a(this.b)) {
            return;
        }
        UGCGuideSelectBookActivity.c((UGCGuideSelectBookActivity) this.b.a)[this.a] = bl;
        UGCGuideSelectBookActivity.a(this.b.a, this.a);
    }
}
