package com.clilystudio.netbook.ui.ugcbook;

import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.event.J;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.UGCBookListRoot;
import com.clilystudio.netbook.model.UGCBookListRoot$UGCBook;

import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;

public class DraftUGCListFragment extends AbsUGCListFragment {

    protected final UGCBookListRoot a(Account Account1, int int2) {
        com.clilystudio.netbook.api.b.a();
        return com.clilystudio.netbook.api.b.b().h(Account1.getToken(), int2);
    }

    protected final String c() {
        return "\u8349\u7A3F\u7BB1\u91CC\u6CA1\u6709\u4E66\u5355";
    }

    public void onCreate(Bundle Bundle1) {
        super.onCreate(Bundle1);
        com.clilystudio.netbook.event.i.a().a(this);
    }

    public void onDestroy() {
        super.onDestroy();
        com.clilystudio.netbook.event.i.a().b(this);
    }
// Error: Internal #201: 
// The following method may not be correct.

    public void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4) {
    }

    public void onUpdateUgcList(J J1) {
        if (i != null && c != null) {
            Iterator Iterator2 = i.iterator();

            while (Iterator2.hasNext()) {
                UGCBookListRoot$UGCBook UGCBook3 = (UGCBookListRoot$UGCBook) Iterator2.next();

                if (!UGCBook3.get_id().equals(J1.b()))
                    continue;
                UGCBook3.setCover(J1.a());
                UGCBook3.setTitle(J1.c());
                UGCBook3.setDesc(J1.d());
                UGCBook3.setBookCount(J1.e());
                UGCBook3.setUpdated(new Date());
            }
            Collections.sort(i, (Comparator) new f(this));
            c.a((Collection) i);
        }
    }
}
