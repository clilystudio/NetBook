package com.clilystudio.netbook.ui.home;

import android.app.Activity;

import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.model.BookUpdate;
import com.clilystudio.netbook.util.e;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class K
        extends com.clilystudio.netbook.a_pack.e<Void, Void, List<BookUpdate>> {
    private List<BookReadRecord> a;
    private /* synthetic */ HomeShelfFragment b;

    private K(HomeShelfFragment homeShelfFragment) {
        this.b = homeShelfFragment;
    }

    /* synthetic */ K(HomeShelfFragment homeShelfFragment, byte by) {
        this(homeShelfFragment);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private /* varargs */ List<BookUpdate> a() {
        this.a = BookReadRecord.getAll();
        try {
            ArrayList<String> arrayList = new ArrayList<String>();
            Iterator<BookReadRecord> iterator = this.a.iterator();
            while (iterator.hasNext()) {
                arrayList.add(iterator.next().getBookId());
            }
            b.a();
            return b.b().a(arrayList);
        } catch (Exception var2_3) {
            var2_3.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] var1_1) {
        return this.a();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        List list = (List) object;
        super.onPostExecute(list);
        if (this.b.getActivity() == null) return;
        {
            HomeShelfFragment.g(this.b);
            if (list != null && !list.isEmpty()) {
                HomeShelfFragment.a(this.b, list, this.a);
                return;
            } else {
                if (HomeShelfFragment.i(this.b) != 0) return;
                {
                    e.a((Activity) this.b.getActivity(), (int) 2131034417);
                    return;
                }
            }
        }
    }
}
