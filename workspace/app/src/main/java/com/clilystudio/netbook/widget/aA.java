package com.clilystudio.netbook.widget;

import android.view.View;

final class aA
        implements View.OnClickListener {
    aA(ShareWarningView paramShareWarningView) {
    }

    public final void onClick(View paramView) {
        if (ShareWarningView.a(this.a) != null)
            ShareWarningView.a(this.a).a();
    }
}

