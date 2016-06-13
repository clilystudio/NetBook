package com.clilystudio.netbook.adapter;

import android.view.LayoutInflater;

import com.clilystudio.netbook.model.TocDownloadSummary;
import com.clilystudio.netbook.util.W;

public final class C
        extends W<TocDownloadSummary> {
    private int a = -1;

    public C(LayoutInflater layoutInflater) {
        super(layoutInflater, 2130903300);
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
        return new int[]{2131493741, 2131493738, 2131493740};
    }
}
