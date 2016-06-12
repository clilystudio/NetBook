package com.clilystudio.netbook.reader;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;

import com.clilystudio.netbook.model.TocDownloadSummary;

final class h implements AdapterView$OnItemClickListener {

    private LocalChapterListActivity a;

    h(LocalChapterListActivity LocalChapterListActivity1) {
        a = LocalChapterListActivity1;
    }

    public final void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4) {
        int int6 = int3 - LocalChapterListActivity.a(a).getHeaderViewsCount();

        if (int6 >= 0) {
            TocDownloadSummary TocDownloadSummary7 = (TocDownloadSummary) LocalChapterListActivity.b(a).getItem(int6);
            Intent Intent8 = ReaderActivity.a((Context) a, LocalChapterListActivity.c(a), LocalChapterListActivity.d(a), TocDownloadSummary7.getTocId(), null, true);

            a.startActivity(Intent8);
        }
    }
}
