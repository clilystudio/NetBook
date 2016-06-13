package com.clilystudio.netbook.reader;

import android.content.res.Resources;
import android.widget.TextView;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.ChineseAllPromRoot;
import com.clilystudio.netbook.model.TocSummary;

import java.util.Iterator;
import java.util.List;

final class bE
        extends e<String, Void, Object[]> {
    private /* synthetic */ ReaderMixActivity a;

    private bE(ReaderMixActivity readerMixActivity) {
        this.a = readerMixActivity;
    }

    /* synthetic */ bE(ReaderMixActivity readerMixActivity, byte by) {
        this(readerMixActivity);
    }

    private static /* varargs */ Object[] a(String... arrstring) {
        try {
            b.a();
            ApiService apiService = b.b();
            Object[] arrobject = new Object[]{apiService.d(arrstring[0]), apiService.aa(arrstring[0])};
            return arrobject;
        } catch (Exception var1_3) {
            var1_3.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return bE.a((String[]) arrobject);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        Object[] arrobject = (Object[]) object;
        if (arrobject == null) return;
        List list = (List) arrobject[0];
        if (list == null) {
            this.a.h();
            return;
        }
        if (list.isEmpty()) {
            this.a.g();
            return;
        }
        this.a.f();
        TextView textView = (TextView) this.a.findViewById(2131493880);
        Resources resources = this.a.getResources();
        Object[] arrobject2 = new Object[]{-1 + list.size()};
        textView.setText(resources.getString(2131034520, arrobject2));
        Iterator iterator = list.iterator();
        boolean bl = false;
        while (iterator.hasNext()) {
            boolean bl2;
            TocSummary tocSummary = (TocSummary) iterator.next();
            if ("zhuishuvip".equals(tocSummary.getSource())) {
                ReaderMixActivity.a(this.a, tocSummary);
                bl2 = true;
            } else {
                bl2 = bl;
            }
            bl = bl2;
        }
        ReaderMixActivity.d(this.a).a(list);
        ReaderMixActivity.a(this.a, (ChineseAllPromRoot) arrobject[1]);
        if (ReaderMixActivity.g(this.a) != null && ReaderMixActivity.g(this.a).getProm() != null) {
            ReaderMixActivity.h(this.a).setOnClickListener(new bF(this.a, ReaderMixActivity.g(this.a)));
            ReaderMixActivity.h(this.a).setVisibility(0);
            return;
        }
        ReaderMixActivity.h(this.a).setVisibility(8);
    }
}
