package com.clilystudio.netbook.reader;

import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.model.TocDownloadSummary;

final class i implements AdapterView.OnItemLongClickListener {
    private /* synthetic */ LocalChapterListActivity a;

    i(LocalChapterListActivity localChapterListActivity) {
        this.a = localChapterListActivity;
    }

    @Override
    public final boolean onItemLongClick(AdapterView<?> adapterView, View view, int n, long l) {
        TocDownloadSummary tocDownloadSummary;
        int n2 = n - LocalChapterListActivity.a(this.a).getHeaderViewsCount();
        if (n2 >= 0 && (tocDownloadSummary = (TocDownloadSummary) LocalChapterListActivity.b(this.a).getItem(n2)) != null) {
            LocalChapterListActivity.a(this.a, tocDownloadSummary.getTocId());
        }
        return true;
    }
}
