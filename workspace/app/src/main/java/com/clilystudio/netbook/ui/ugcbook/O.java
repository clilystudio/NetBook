package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;
import android.support.design.widget.am;

import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.ResultStatus;

import java.io.IOException;

final class O extends com.clilystudio.netbook.a.c {

    private UGCGuideEditBooksActivity a;

    public O(UGCGuideEditBooksActivity UGCGuideEditBooksActivity1) {
        super((Activity) UGCGuideEditBooksActivity1, 2131034218);
        a = UGCGuideEditBooksActivity1;
    }

    private transient ResultStatus a() {
        try {
            Account Account2 = am.a((Activity) a);
        } catch (IOException IOException1) {
            IOException1.printStackTrace();
        }
        return null;
    }

    public final volatile Object a(Object[] Object_1darray1) {
        return a();
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final void a(Object Object1) {
    }
}
