package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.a.c;
import com.clilystudio.netbook.db.VoteRecord;
import com.clilystudio.netbook.model.VoteResult;
import com.clilystudio.netbook.util.e;

final class cx extends c {

    private PostDetailActivity a;

    public cx(PostDetailActivity PostDetailActivity1, Activity Activity2, int int3) {
        super(Activity2, 2131034584);
        a = PostDetailActivity1;
    }

    private transient VoteResult a(String[] String_1darray1) {
        VoteResult VoteResult3;

        try {
            VoteResult3 = com.clilystudio.netbook.api.b.b().k(String_1darray1[0], String_1darray1[1], String_1darray1[2]);
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return null;
        }
        return VoteResult3;
    }

    public final volatile Object a(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    public final void a(Object Object1) {
        VoteResult VoteResult2 = (VoteResult) Object1;

        if (VoteResult2 != null) {
            if (VoteResult2.isOk()) {
                PostDetailActivity.a(a, PostDetailActivity.h(a), false);
                e.a((Activity) a, "\u6210\u529F");
                VoteRecord.create(PostDetailActivity.i(a).getUser().getId(), PostDetailActivity.a(a).get_id(), PostDetailActivity.h(a));
            } else if ("ALREADY_VOTED".equals(VoteResult2.getCode())) {
                int int4 = VoteResult2.getSelected();

                PostDetailActivity.a(a, int4, false);
                VoteRecord.create(PostDetailActivity.i(a).getUser().getId(), PostDetailActivity.a(a).get_id(), int4);
                e.a((Activity) a, "\u60A8\u5DF2\u7ECF\u6295\u8FC7\u5566");
            } else if ("FORBIDDEN".equals(VoteResult2.getCode())) {
                String String3 = VoteResult2.getMsg();

                if (String3 != null)
                    e.a((Activity) a, String3);
                else
                    e.a((Activity) a, 2131034388);
            } else
                e.a((Activity) a, "\u6295\u7968\u5931\u8D25\uFF0C\u8BF7\u91CD\u8BD5");
        } else
            e.a((Activity) a, "\u6295\u7968\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u7A0D\u540E\u518D\u8BD5");
    }
}
