package com.clilystudio.app.netbook.ui.home;

import com.clilystudio.app.netbook.a_packA.e_BaseAsyncTask;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.db.BookReadRecord;
import com.clilystudio.app.netbook.model.BookUpdate;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class K extends e_BaseAsyncTask<Void, Void, List<BookUpdate>> {
    private List<BookReadRecord> a;

    private K(HomeShelfFragment paramHomeShelfFragment) {
    }

    private List<BookUpdate> a() {
        this.a = BookReadRecord.getAll();
        ArrayList localArrayList;
        try {
            localArrayList = new ArrayList();
            Iterator localIterator = this.a.iterator();
            while (localIterator.hasNext())
                localArrayList.add(((BookReadRecord) localIterator.next()).getBookId());
        } catch (Exception localException) {
            localException.printStackTrace();
            return null;
        }
        b.a();
        List localList = b.b().a(localArrayList);
        return localList;
    }

    @Override
    protected List<BookUpdate> doInBackground(Void... params) {
        return null;
    }
}
