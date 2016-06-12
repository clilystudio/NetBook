package com.clilystudio.netbook.reader;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;

import com.clilystudio.netbook.model.TocSummary;

final class bV implements AdapterView$OnItemClickListener {

    private ReaderResourceFragment a;

    bV(ReaderResourceFragment ReaderResourceFragment1) {
        a = ReaderResourceFragment1;
    }

    public final void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4) {
        int int6 = int3 - ReaderResourceFragment.b(a).getHeaderViewsCount();

        if (int6 >= 0) {
            TocSummary TocSummary7 = (TocSummary) ReaderResourceFragment.c(a).getItem(int6);
            Intent Intent8 = ReaderActivity.a((Context) a.getActivity(), ReaderResourceFragment.a(a), ReaderResourceFragment.d(a), TocSummary7.get_id(), null, true);

            a.startActivity(Intent8);
            ReaderResourceFragment.c(a).a(int6);
        }
    }
}
