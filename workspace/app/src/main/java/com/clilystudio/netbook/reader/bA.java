package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.TocSummary;

import java.util.List;

final class bA
        extends e<String, Void, List<TocSummary>> {
    private /* synthetic */ ReaderMenuFragment a;

    private bA(ReaderMenuFragment readerMenuFragment) {
        this.a = readerMenuFragment;
    }

    /* synthetic */ bA(ReaderMenuFragment readerMenuFragment, byte by) {
        this(readerMenuFragment);
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
        return bA.a((String[]) arrobject);
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
            ReaderMenuFragment.k(this.a).a();
            ReaderMenuFragment.a(this.a, list);
            return;
        }
        ReaderMenuFragment.k(this.a).b();
    }

    @Override
    protected final void onPreExecute() {
        super.onPreExecute();
        ReaderMenuFragment.k(this.a).c();
    }
}
