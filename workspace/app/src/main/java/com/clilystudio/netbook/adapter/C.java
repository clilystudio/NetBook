package com.clilystudio.netbook.adapter;

import android.view.LayoutInflater;

import com.clilystudio.netbook.model.TocDownloadSummary;
import com.clilystudio.netbook.util.W;

public final class C extends W<TocDownloadSummary> {
    private int a = -1;

    public C(LayoutInflater layoutInflater) {
        super(layoutInflater, R.layout.list_item_resource_download);
    }

    @Override
    protected final /* synthetic */ void a(int n, Object object) {
        TocDownloadSummary tocDownloadSummary = (TocDownloadSummary) object;
        this.a(0, tocDownloadSummary.getHostName());
        this.a(1, "\u5df2\u9884\u8bfb" + tocDownloadSummary.getCount() + "\u7ae0");
        if (this.a == n) {
            this.a(2, false);
            return;
        }
        this.a(2, true);
    }

    @Override
    protected final int[] a() {
        return new int[]{R.id.tv_name, R.id.tv_last_chapter, R.id.resource_list_item_last_select};
    }
}
