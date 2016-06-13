package com.clilystudio.netbook.ui.ugcbook;

import android.view.View;

import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.event.D;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.UGCNewCollection;

import java.util.ArrayList;
import java.util.Iterator;

final class W
        implements View.OnClickListener {
    private /* synthetic */ UGCGuideSelectBookActivity a;

    W(UGCGuideSelectBookActivity uGCGuideSelectBookActivity) {
        this.a = uGCGuideSelectBookActivity;
    }

    @Override
    public final void onClick(View view) {
        UGCNewCollection uGCNewCollection = UGCGuideSelectBookActivity.a(this.a);
        ArrayList<String> arrayList = new ArrayList<String>();
        Iterator<BookSummary> iterator = uGCNewCollection.getBooks().iterator();
        while (iterator.hasNext()) {
            arrayList.add(iterator.next().getId());
        }
        ArrayList<String> arrayList2 = new ArrayList<String>();
        for (int j = 0; j < UGCGuideSelectBookActivity.b(this.a).size(); ++j) {
            String string = ((BookReadRecord) UGCGuideSelectBookActivity.b(this.a).get(j)).getBookId();
            if (arrayList.contains(string)) continue;
            arrayList2.add(string);
        }
        String[] arrstring = (String[]) a.a(arrayList2, String.class);
        i.a().c(new D(arrstring));
        this.a.finish();
    }
}
