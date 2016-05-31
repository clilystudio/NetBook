package com.clilystudio.app.netbook.reader;

import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.app.netbook.MyApplication;
import com.clilystudio.app.netbook.event.v;
import com.clilystudio.app.netbook.model.TocSummary;
import com.clilystudio.app.netbook.util.am_CommonUtils;

final class bC
        implements AdapterView.OnItemClickListener {
    bC(ReaderMixActivity paramReaderMixActivity) {
    }

    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        int i = paramInt - ReaderMixActivity.c_initContentView(this.a).getHeaderViewsCount();
        TocSummary localTocSummary = (TocSummary) ReaderMixActivity.d_setTitle(this.a).getItem(i);
        if (!localTocSummary.getHost().equals(ReaderMixActivity.a(this.a))) {
            MyApplication.a_getInstance().c(ReaderMixActivity.b_initContentView(this.a));
            if (!"vip.zhuishushenqi.com".equals(ReaderMixActivity.a(this.a)))
                break label123;
            am_CommonUtils.c_setReadMode(ReaderMixActivity.b_initContentView(this.a), 9);
        }
        while (true) {
            i.a().c(new v(1));
            ReaderMixActivity.a(this.a, localTocSummary.get_id());
            this.a.finish();
            return;
            label123:
            am_CommonUtils.c_setReadMode(ReaderMixActivity.b_initContentView(this.a), 10);
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.bC
 * JD-Core Version:    0.6.2
 */