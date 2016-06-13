package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.TocSummary;

import java.util.List;

final class bY
        extends e<String, Void, List<TocSummary>> {
    private /* synthetic */ ReaderResourceFragment a;

    private bY(ReaderResourceFragment readerResourceFragment) {
        this.a = readerResourceFragment;
    }

    /* synthetic */ bY(ReaderResourceFragment readerResourceFragment, byte by) {
        this(readerResourceFragment);
    }

    private static /* varargs */ List<TocSummary> a(String... arrstring) {
        try {
            b.a();
            List<TocSummary> list = b.b().d(arrstring[0]);
            return list;
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return bY.a((String[]) arrobject);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        List list = (List) object;
        super.onPostExecute(list);
        if (this.a.getActivity() == null) return;
        if (list != null) {
            if (!list.isEmpty()) {
                ReaderResourceFragment.a(this.a, 1);
                ReaderResourceFragment.a(this.a, list);
                ReaderResourceFragment.c(this.a).a(list);
                return;
            }
            ReaderResourceFragment.a(this.a, 3);
            return;
        }
        ReaderResourceFragment.a(this.a, 2);
    }
}
