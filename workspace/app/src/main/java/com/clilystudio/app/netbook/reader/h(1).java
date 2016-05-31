package com.clilystudio.app.netbook.reader;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.app.netbook.model.TocDownloadSummary;

final class h
        implements AdapterView.OnItemClickListener {
    h(LocalChapterListActivity paramLocalChapterListActivity) {
    }

    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        int i = paramInt - LocalChapterListActivity.a(this.a).getHeaderViewsCount();
        if (i >= 0) {
            TocDownloadSummary localTocDownloadSummary = (TocDownloadSummary) LocalChapterListActivity.b_initContentView(this.a).getItem(i);
            Intent localIntent = ReaderActivity.a(this.a, LocalChapterListActivity.c_initContentView(this.a), LocalChapterListActivity.d_setTitle(this.a), localTocDownloadSummary.getTocId(), null, true);
            this.a.startActivity(localIntent);
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.h
 * JD-Core Version:    0.6.2
 */