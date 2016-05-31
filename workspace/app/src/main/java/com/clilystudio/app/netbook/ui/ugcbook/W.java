package com.clilystudio.app.netbook.ui.ugcbook;

import android.view.View;

import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.db.BookReadRecord;
import com.clilystudio.app.netbook.event.D;
import com.clilystudio.app.netbook.event.i;
import com.clilystudio.app.netbook.model.BookSummary;
import com.clilystudio.app.netbook.model.UGCNewCollection;

import java.util.ArrayList;
import java.util.Iterator;

final class W
        implements View.OnClickListener {
    W(UGCGuideSelectBookActivity paramUGCGuideSelectBookActivity) {
    }

    public final void onClick(View paramView) {
        UGCNewCollection localUGCNewCollection = UGCGuideSelectBookActivity.a(this.a);
        ArrayList localArrayList1 = new ArrayList();
        Iterator localIterator = localUGCNewCollection.getBooks().iterator();
        while (localIterator.hasNext())
            localArrayList1.add(((BookSummary) localIterator.next()).getId());
        ArrayList localArrayList2 = new ArrayList();
        for (int i = 0; i < UGCGuideSelectBookActivity.b_initContentView(this.a).size(); i++) {
            String str = ((BookReadRecord) UGCGuideSelectBookActivity.b_initContentView(this.a).get(i)).getBookId();
            if (!localArrayList1.contains(str))
                localArrayList2.add(str);
        }
        String[] arrayOfString = (String[]) a.a(localArrayList2, String.class);
        i.a().c(new D(arrayOfString));
        this.a.finish();
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.W
 * JD-Core Version:    0.6.2
 */