package com.clilystudio.netbook.widget;

import android.view.View;

final class aA
        implements View.OnClickListener {
    private /* synthetic */ ShareWarningView a;

    aA(ShareWarningView shareWarningView) {
        this.a = shareWarningView;
    }

    @Override
    public final void onClick(View view) {
        if (ShareWarningView.a(this.a) != null) {
            ShareWarningView.a(this.a).a();
        }
    }
}
