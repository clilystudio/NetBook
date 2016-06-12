package com.clilystudio.netbook.ui.ugcbook;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;

final class U implements AdapterView$OnItemClickListener {

    private UGCGuideSelectBookActivity a;

    U(UGCGuideSelectBookActivity UGCGuideSelectBookActivity1) {
        a = UGCGuideSelectBookActivity1;
    }

    public final void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4) {
        a.a(int3);
    }
}
