package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.support.design.widget.am;

import com.clilystudio.netbook.db.FollowRecord;
import com.clilystudio.netbook.model.FollowingsResult;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

final class bV extends com.clilystudio.netbook.a.e {

    private Runnable a;
    private MyTweetFragment b;
    public bV(MyTweetFragment MyTweetFragment1, Runnable Runnable2) {
        b = MyTweetFragment1;
        a = Runnable2;
    }

    private static transient FollowingsResult a(String[] String_1darray1) {
        FollowingsResult FollowingsResult4;

        try {
            com.clilystudio.netbook.api.b.a();
            FollowingsResult4 = com.clilystudio.netbook.api.b.b().h(String_1darray1[0]);
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return null;
        }
        return FollowingsResult4;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (FollowingsResult) Object1;

        super.onPostExecute(Object2);
        if (b.getActivity() != null) {
            if (Object2 != null && ((FollowingsResult) Object2).getFollowings() != null) {
                MyTweetFragment.a(b, (List) new ArrayList((Collection) Arrays.asList(((FollowingsResult) Object2).getFollowings())));
                FollowRecord.clear(am.e().getUser().getId());
                FollowRecord.save2DB(((FollowingsResult) Object2).getFollowings());
                MyTweetFragment.d(b);
                if (a != null)
                    a.run();
            } else {
                com.clilystudio.netbook.util.e.a((Activity) b.getActivity(), "\u52A0\u8F7D\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u7A0D\u540E\u518D\u8BD5");
                return;
            }
        }
    }
}
