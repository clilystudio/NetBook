package com.clilystudio.netbook.reader;

import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.event.v;
import com.clilystudio.netbook.model.TocSummary;

final class bC
        implements AdapterView.OnItemClickListener {
    bC(ReaderMixActivity paramReaderMixActivity) {
    }

    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        int i = paramInt - ReaderMixActivity.c(this.a).getHeaderViewsCount();
        TocSummary localTocSummary = (TocSummary) ReaderMixActivity.d(this.a).getItem(i);
        if (!localTocSummary.getHost().equals(ReaderMixActivity.a(this.a))) {
            MyApplication.a().c(ReaderMixActivity.b(this.a));
            if (!"vip.zhuishushenqi.com".equals(ReaderMixActivity.a(this.a)))
                break label123;
            am.c(ReaderMixActivity.b(this.a), 9);
        }
        while (true) {
            i.a().c(new v(1));
            ReaderMixActivity.a(this.a, localTocSummary.get_id());
            this.a.finish();
            return;
            label123:
            am.c(ReaderMixActivity.b(this.a), 10);
        }
    }
}

