package com.clilystudio.netbook.ui;

import android.view.View;
import android.widget.AdapterView;

final class aQ
        implements AdapterView.OnItemClickListener {
    private /* synthetic */ BookRankListFragment a;

    aQ(BookRankListFragment bookRankListFragment) {
        this.a = bookRankListFragment;
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n, long l) {
        this.a.a(n);
    }
}
