package com.clilystudio.netbook.ui.ugcbook;

import android.widget.CompoundButton;

final class Y
        implements CompoundButton.OnCheckedChangeListener {
    Y(X paramX, int paramInt) {
    }

    public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean) {
        if (X.a(this.b))
            return;
        UGCGuideSelectBookActivity.c(this.b.a)[this.a] = paramBoolean;
        UGCGuideSelectBookActivity.a(this.b.a, this.a);
    }
}

