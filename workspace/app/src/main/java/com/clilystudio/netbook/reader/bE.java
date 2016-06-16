package com.clilystudio.netbook.reader;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.ChineseAllPromRoot;
import com.clilystudio.netbook.model.TocSummary;
import com.clilystudio.netbook.widget.*;

import java.util.Iterator;
import java.util.List;

final class bE extends e<String, Void, Object[]> {
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
        TextView textView = (TextView) this.a.findViewById(R.id.reader_mix_header_count);
        Resources resources = this.a.getResources();
        Object[] arrobject2 = new Object[]{-1 + list.size()};
        textView.setText(resources.getString(R.string.source_list_title, arrobject2));
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
        final ChineseAllPromRoot chineseAllPromRoot = ReaderMixActivity.g(this.a);
        if (chineseAllPromRoot != null && chineseAllPromRoot.getProm() != null) {
            ReaderMixActivity.h(this.a).setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    if (chineseAllPromRoot != null && chineseAllPromRoot.getProm() != null) {
                        String string = chineseAllPromRoot.getProm().getLink();
                        new com.clilystudio.netbook.widget.j(bE.this.a, string).a();
                    }
                }
            });
            ReaderMixActivity.h(this.a).setVisibility(View.VISIBLE);
            return;
        }
        ReaderMixActivity.h(this.a).setVisibility(View.GONE);
    }
}
