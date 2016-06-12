package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.model.GirlTopicResult;

final class br extends e {

    private GirlTopicActivity a;

    br(GirlTopicActivity GirlTopicActivity1, byte byte2) {
        this(GirlTopicActivity1);
    }

    private br(GirlTopicActivity GirlTopicActivity1) {
        a = GirlTopicActivity1;
    }

    private transient GirlTopicResult a(String[] String_1darray1) {
        GirlTopicResult GirlTopicResult3;

        try {
            GirlTopicResult3 = com.clilystudio.netbook.api.b.b().F(String_1darray1[0]);
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return null;
        }
        return GirlTopicResult3;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (GirlTopicResult) Object1;

        super.onPostExecute(Object2);
        if (Object2 != null && ((GirlTopicResult) Object2).getPost() != null) {
            a.f();
            GirlTopicActivity.a(a, ((GirlTopicResult) Object2).getPost());
            GirlTopicActivity.b(a, GirlTopicActivity.a(a));
            GirlTopicActivity.a(a, GirlTopicActivity.a(a).getVotes());
            if (GirlTopicActivity.a(a).getCommentCount() >= 0)
                GirlTopicActivity.b(a);
        } else
            a.h();
    }
}
