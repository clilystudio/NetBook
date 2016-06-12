package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.model.FollowersResult;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

final class cj extends com.clilystudio.netbook.a.e {

    private Runnable a;
    private OtherUserActivity b;
    public cj(OtherUserActivity OtherUserActivity1, Runnable Runnable2) {
        b = OtherUserActivity1;
        a = Runnable2;
    }

    private static transient FollowersResult a(String[] String_1darray1) {
        FollowersResult FollowersResult4;

        try {
            com.clilystudio.netbook.api.b.a();
            FollowersResult4 = com.clilystudio.netbook.api.b.b().i(String_1darray1[0]);
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return null;
        }
        return FollowersResult4;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (FollowersResult) Object1;

        super.onPostExecute(Object2);
        if (Object2 != null && ((FollowersResult) Object2).getFollowers() != null) {
            OtherUserActivity.b(b, (List) new ArrayList((Collection) Arrays.asList(((FollowersResult) Object2).getFollowers())));
            OtherUserActivity.e(b);
            if (a != null)
                a.run();
        } else
            com.clilystudio.netbook.util.e.a((Activity) b, "\u52A0\u8F7D\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u7A0D\u540E\u518D\u8BD5");
    }
}
