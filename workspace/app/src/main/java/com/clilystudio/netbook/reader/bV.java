package com.clilystudio.netbook.reader;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.model.TocSummary;

final class bV
        implements AdapterView.OnItemClickListener {
    private /* synthetic */ ReaderResourceFragment a;

    bV(ReaderResourceFragment readerResourceFragment) {
        this.a = readerResourceFragment;
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n2, long l2) {
        int n3 = n2 - ReaderResourceFragment.b(this.a).getHeaderViewsCount();
        if (n3 >= 0) {
            TocSummary tocSummary = (TocSummary) ReaderResourceFragment.c(this.a).getItem(n3);
            Intent intent = ReaderActivity.a(this.a.getActivity(), ReaderResourceFragment.a(this.a), ReaderResourceFragment.d(this.a), tocSummary.get_id(), null, true);
            this.a.startActivity(intent);
            ReaderResourceFragment.c(this.a).a(n3);
        }
    }
}
