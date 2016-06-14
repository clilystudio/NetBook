package com.clilystudio.netbook.reader;

import android.support.design.widget.am;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.v;
import com.clilystudio.netbook.model.TocSummary;

final class bC implements AdapterView.OnItemClickListener {
    private /* synthetic */ ReaderMixActivity a;

    bC(ReaderMixActivity readerMixActivity) {
        this.a = readerMixActivity;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n, long l2) {
        int n2 = n - ReaderMixActivity.c(this.a).getHeaderViewsCount();
        TocSummary tocSummary = (TocSummary) ReaderMixActivity.d(this.a).getItem(n2);
        if (!tocSummary.getHost().equals(ReaderMixActivity.a(this.a))) {
            MyApplication.a().c(ReaderMixActivity.b(this.a));
            if ("vip.zhuishushenqi.com".equals(ReaderMixActivity.a(this.a))) {
                am.c((String) ReaderMixActivity.b(this.a), (int) 9);
            } else {
                am.c((String) ReaderMixActivity.b(this.a), (int) 10);
            }
            i.a().c(new v(1));
            ReaderMixActivity.a(this.a, tocSummary.get_id());
        }
        this.a.finish();
    }
}
