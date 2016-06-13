package com.clilystudio.netbook.reader;

import android.view.View;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.MenuAd;

import java.util.List;

final class bz
        extends e<Void, Void, List<MenuAd>> {
    private /* synthetic */ ReaderMenuFragment a;

    private bz(ReaderMenuFragment readerMenuFragment) {
        this.a = readerMenuFragment;
    }

    /* synthetic */ bz(ReaderMenuFragment readerMenuFragment, byte by) {
        this(readerMenuFragment);
    }

    private static /* varargs */ List<MenuAd> a() {
        try {
            b.a();
            List<MenuAd> list = b.b().i();
            return list;
        } catch (Exception var0_1) {
            var0_1.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] var1_1) {
        return this.a();
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        List list = (List) object;
        super.onPostExecute(list);
        if (this.a.getActivity() == null || this.a.getView() == null) {
            return;
        }
        if (list == null || list.isEmpty()) {
            ReaderMenuFragment.l(this.a);
            return;
        }
        View view = this.a.getView().findViewById(2131492933);
        view.setVisibility(0);
        view.setOnClickListener(ReaderMenuFragment.m(this.a));
        view.findViewById(2131492916).setOnClickListener(ReaderMenuFragment.m(this.a));
        a.a().a(list);
        ReaderMenuFragment.n(this.a);
    }
}
