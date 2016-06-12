package com.clilystudio.netbook.ui;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;

final class aQ implements AdapterView$OnItemClickListener {

    private BookRankListFragment a;

    aQ(BookRankListFragment BookRankListFragment1) {
        a = BookRankListFragment1;
    }

    public final void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4) {
        a.a(int3);
    }
}
