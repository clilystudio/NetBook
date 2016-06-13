package com.clilystudio.netbook.ui.ugcbook;

import android.view.View;
import android.widget.AdapterView;

final class U
        implements AdapterView.OnItemClickListener {
    private /* synthetic */ UGCGuideSelectBookActivity a;

    U(UGCGuideSelectBookActivity uGCGuideSelectBookActivity) {
        this.a = uGCGuideSelectBookActivity;
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n, long l2) {
        this.a.a(n);
    }
}
