package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.support.design.widget.am;

import com.clilystudio.netbook.db.RetweenRecord;
import com.clilystudio.netbook.model.PostPublish;

final class dC extends com.clilystudio.netbook.a.c {

    private TweetDetailActivity a;

    public dC(TweetDetailActivity TweetDetailActivity1, Activity Activity2, int int3) {
        super(Activity2, 2131034473);
        a = TweetDetailActivity1;
    }

    private transient PostPublish a(String[] String_1darray1) {
        PostPublish PostPublish3;

        try {
            PostPublish3 = com.clilystudio.netbook.api.b.b().m(String_1darray1[0], String_1darray1[1]);
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return null;
        }
        return PostPublish3;
    }

    public final volatile Object a(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    public final void a(Object Object1) {
        PostPublish PostPublish2 = (PostPublish) Object1;

        if (PostPublish2 != null && PostPublish2.isOk()) {
            com.clilystudio.netbook.util.e.a((Activity) a, "\u8F6C\u53D1\u6210\u529F");
            TweetDetailActivity.e(a);
            RetweenRecord.save2DB(am.a((Activity) a).getUser().getId(), TweetDetailActivity.c(a).getTweet().get_id());
        }
    }
}
