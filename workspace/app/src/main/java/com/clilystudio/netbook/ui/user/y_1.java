package com.clilystudio.netbook.ui.user;

import android.app.Activity;

import com.clilystudio.netbook.a.c;
import com.clilystudio.netbook.model.ResultStatus;
import com.clilystudio.netbook.util.e;

import java.io.IOException;

final class y extends c {

    private MyFavTopicFragment a;

    public y(MyFavTopicFragment MyFavTopicFragment1, Activity Activity2, int int3) {
        super(Activity2, 2131034218);
        a = MyFavTopicFragment1;
    }

    private static transient ResultStatus a(String[] String_1darray1) {
        ResultStatus ResultStatus4;

        try {
            com.clilystudio.netbook.api.b.a();
            ResultStatus4 = com.clilystudio.netbook.api.b.b().z(String_1darray1[0], String_1darray1[1]);
        } catch (IOException IOException2) {
            IOException2.printStackTrace();
            return null;
        }
        return ResultStatus4;
    }

    public final volatile Object a(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    public final void a(Object Object1) {
        ResultStatus ResultStatus2 = (ResultStatus) Object1;

        if (ResultStatus2 != null) {
            if (ResultStatus2.isOk()) {
                e.a(b(), "\u5220\u9664\u6210\u529F");
                MyFavTopicFragment.d(a).setRefreshing();
            } else
                e.a(b(), "\u5220\u9664\u5931\u8D25\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5");
        } else
            e.a(b(), "\u5220\u9664\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u7A0D\u540E\u518D\u8BD5");
    }
}
