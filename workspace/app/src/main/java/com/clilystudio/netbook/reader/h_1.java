package com.clilystudio.netbook.reader;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.model.TocDownloadSummary;

final class h implements AdapterView.OnItemClickListener {
    private /* synthetic */ LocalChapterListActivity a;

    h(LocalChapterListActivity localChapterListActivity) {
        this.a = localChapterListActivity;
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n2, long l2) {
        int n3 = n2 - LocalChapterListActivity.a(this.a).getHeaderViewsCount();
        if (n3 >= 0) {
            TocDownloadSummary tocDownloadSummary = (TocDownloadSummary) LocalChapterListActivity.b(this.a).getItem(n3);
            Intent intent = ReaderActivity.a(this.a, LocalChapterListActivity.c(this.a), LocalChapterListActivity.d(this.a), tocDownloadSummary.getTocId(), null, true);
            this.a.startActivity(intent);
        }
    }
}
