package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.a.c;
import com.clilystudio.netbook.model.Review;
import com.clilystudio.netbook.model.ReviewHistory;

import java.io.IOException;

final class aG extends c {

    private BookReviewListFragment a;

    public aG(BookReviewListFragment BookReviewListFragment1, Activity Activity2) {
        super(Activity2, "\u6B63\u5728\u83B7\u53D6\u5386\u53F2\u4E66\u8BC4...");
        a = BookReviewListFragment1;
    }

    private static Review a(String[] String_1darray1) {
        try {
            ReviewHistory ReviewHistory4;

            com.clilystudio.netbook.api.b.a();
            ReviewHistory4 = com.clilystudio.netbook.api.b.b().q(String_1darray1[0], String_1darray1[1]);
        } catch (IOException IOException2) {
            IOException2.printStackTrace();
        }
        return null;
    }

    public final volatile Object a(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    public final void a(Object Object1) {
        Review Review2 = (Review) Object1;

        if (b() != null) {
            if (Review2 != null)
                BookReviewListFragment.b(a, Review2);
            else {
                MyApplication.a().a(new String[]{"saveToLocalReviewTitle", "saveToLocalReviewDesc"});
                BookReviewListFragment.f(a);
                return;
            }
        }
    }
}
