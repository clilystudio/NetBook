package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.model.Tweet;
import com.clilystudio.netbook.model.TweetsResult;

final class cm extends com.clilystudio.netbook.a.e {

    private OtherUserActivity a;

    cm(OtherUserActivity OtherUserActivity1, byte byte2) {
        this(OtherUserActivity1);
    }

    private cm(OtherUserActivity OtherUserActivity1) {
        a = OtherUserActivity1;
    }

    private static transient TweetsResult a(String[] String_1darray1) {
        TweetsResult TweetsResult4;

        try {
            com.clilystudio.netbook.api.b.a();
            TweetsResult4 = com.clilystudio.netbook.api.b.b().o(String_1darray1[0], null);
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return null;
        }
        return TweetsResult4;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (TweetsResult) Object1;

        super.onPostExecute(Object2);
        OtherUserActivity.u(a);
        if (Object2 != null && ((TweetsResult) Object2).getTweets() != null) {
            Object[] Object_1darray3 = ((TweetsResult) Object2).getTweets();
            int int4 = Object_1darray3.length;

            if (int4 > 0) {
                int int5;
                int int6;

                OtherUserActivity.r(a).clear();
                int5 = Object_1darray3.length;
                for (int6 = 0; int6 < int5; ++int6) {
                    Object Object7 = Object_1darray3[int6];

                    ((Tweet) Object7).setUser(((TweetsResult) Object2).getUser());
                    OtherUserActivity.r(a).add(Object7);
                }
                OtherUserActivity.v(a).a(OtherUserActivity.r(a));
                if (int4 < 100)
                    OtherUserActivity.w(a).setOnLastItemVisibleListener(null);
                else
                    OtherUserActivity.w(a).setOnLastItemVisibleListener(OtherUserActivity.x(a));
            } else
                OtherUserActivity.y(a);
        } else
            com.clilystudio.netbook.util.e.a((Activity) a, "\u52A0\u8F7D\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u7A0D\u540E\u518D\u8BD5");
    }
}
