package com.clilystudio.netbook.reader;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.model.TocSummary;

final class bV
        implements AdapterView.OnItemClickListener {
    bV(ReaderResourceFragment paramReaderResourceFragment) {
    }

    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        int i = paramInt - ReaderResourceFragment.b(this.a).getHeaderViewsCount();
        if (i >= 0) {
            TocSummary localTocSummary = (TocSummary) ReaderResourceFragment.c(this.a).getItem(i);
            Intent localIntent = ReaderActivity.a(this.a.getActivity(), ReaderResourceFragment.a(this.a), ReaderResourceFragment.d(this.a), localTocSummary.get_id(), null, true);
            this.a.startActivity(localIntent);
            ReaderResourceFragment.c(this.a).a(i);
        }
    }
}

