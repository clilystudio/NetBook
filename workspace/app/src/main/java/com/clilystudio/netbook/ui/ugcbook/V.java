package com.clilystudio.netbook.ui.ugcbook;

import android.view.View;

final class V implements View.OnClickListener {
    private /* synthetic */ UGCGuideSelectBookActivity a;

    V(UGCGuideSelectBookActivity uGCGuideSelectBookActivity) {
        this.a = uGCGuideSelectBookActivity;
    }

    @Override
    public final void onClick(View view) {
        this.a.finish();
    }
}
