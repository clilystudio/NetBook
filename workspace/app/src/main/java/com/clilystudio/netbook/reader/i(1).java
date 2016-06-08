package com.clilystudio.netbook.reader;

import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.model.TocDownloadSummary;

final class i
        implements AdapterView.OnItemLongClickListener {
    i(LocalChapterListActivity paramLocalChapterListActivity) {
    }

    public final boolean onItemLongClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        int i = paramInt - LocalChapterListActivity.a(this.a).getHeaderViewsCount();
        if (i >= 0) {
            TocDownloadSummary localTocDownloadSummary = (TocDownloadSummary) LocalChapterListActivity.b(this.a).getItem(i);
            if (localTocDownloadSummary != null)
                LocalChapterListActivity.a(this.a, localTocDownloadSummary.getTocId());
        }
        return true;
    }
}

