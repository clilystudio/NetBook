package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;
import android.support.design.widget.am;

import com.clilystudio.netbook.event.E;
import com.clilystudio.netbook.event.J;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.ResultStatus;
import com.clilystudio.netbook.model.UGCNewCollection;

import java.io.IOException;

final class G extends com.clilystudio.netbook.a.c {

    private UGCGuideAddCollectionActivity a;

    public G(UGCGuideAddCollectionActivity UGCGuideAddCollectionActivity1) {
        super((Activity) UGCGuideAddCollectionActivity1, "\u6B63\u5728\u4FDD\u5B58\u5230\u8349\u7A3F\u7BB1...");
        UGCNewCollection UGCNewCollection2;

        a = UGCGuideAddCollectionActivity1;
        UGCNewCollection2 = UGCGuideAddCollectionActivity.b(UGCGuideAddCollectionActivity1);
        UGCNewCollection2.setTitle(UGCGuideAddCollectionActivity.c(UGCGuideAddCollectionActivity1).getText().toString());
        UGCNewCollection2.setDesc(UGCGuideAddCollectionActivity.d(UGCGuideAddCollectionActivity1).getText().toString());
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

    public final void a(Object Object1) {
        ResultStatus ResultStatus2 = (ResultStatus) Object1;

        if (ResultStatus2 == null || !ResultStatus2.isOk())
            com.clilystudio.netbook.util.e.a((Activity) a, "\u4FDD\u5B58\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u91CD\u8BD5");
        else {
            UGCNewCollection UGCNewCollection3;

            com.clilystudio.netbook.util.e.a((Activity) a, "\u5DF2\u4FDD\u5B58\u5230\u8349\u7A3F\u7BB1");
            UGCNewCollection3 = UGCGuideAddCollectionActivity.h(a);
            i.a().c(new E());
            i.a().c(new J(UGCGuideAddCollectionActivity.e(a), UGCNewCollection3.getTitle(), UGCNewCollection3.getDesc(), UGCNewCollection3.getBooks().size(), ((BookSummary) UGCNewCollection3.getBooks().get(0)).getCover()));
            a.finish();
        }
    }
}
