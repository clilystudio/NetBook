package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.model.UserInfoResult;

final class bY extends e {

    private Runnable a;
    private MyTweetFragment b;
    public bY(MyTweetFragment MyTweetFragment1, Runnable Runnable2) {
        b = MyTweetFragment1;
        a = Runnable2;
    }

    private static transient UserInfoResult a(String[] String_1darray1) {
        UserInfoResult UserInfoResult4;

        try {
            com.clilystudio.netbook.api.b.a();
            UserInfoResult4 = com.clilystudio.netbook.api.b.b().m(String_1darray1[0]);
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return null;
        }
        return UserInfoResult4;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (UserInfoResult) Object1;

        super.onPostExecute(Object2);
        if (Object2 != null) {
            MyTweetFragment.n(b).setImageUrl(((User) Object2).getFullAvatar());
            MyTweetFragment.a(b, ((UserInfoResult) Object2).getFollowers());
            MyTweetFragment.b(b, ((UserInfoResult) Object2).getFollowings());
            if (((User) Object2).isDoyan()) {
                MyTweetFragment.o(b).setVisibility(0);
                MyTweetFragment.o(b).setImageResource(2130838229);
            } else if (((User) Object2).isOfficial()) {
                MyTweetFragment.o(b).setVisibility(0);
                MyTweetFragment.o(b).setImageResource(2130838231);
            } else
                MyTweetFragment.o(b).setVisibility(8);
            if (a != null)
                a.run();
        }
    }
}
