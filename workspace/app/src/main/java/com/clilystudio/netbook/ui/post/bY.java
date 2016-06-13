package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.model.UserInfoResult;

final class bY
        extends e<String, Void, UserInfoResult> {
    private Runnable a;
    private /* synthetic */ MyTweetFragment b;

    public bY(MyTweetFragment myTweetFragment, Runnable runnable) {
        this.b = myTweetFragment;
        this.a = runnable;
    }

    private static /* varargs */ UserInfoResult a(String... arrstring) {
        try {
            b.a();
            UserInfoResult userInfoResult = b.b().m(arrstring[0]);
            return userInfoResult;
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return bY.a((String[]) arrobject);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        UserInfoResult userInfoResult = (UserInfoResult) object;
        super.onPostExecute(userInfoResult);
        if (userInfoResult != null) {
            MyTweetFragment.n(this.b).setImageUrl(userInfoResult.getFullAvatar());
            MyTweetFragment.a(this.b, userInfoResult.getFollowers());
            MyTweetFragment.b(this.b, userInfoResult.getFollowings());
            if (userInfoResult.isDoyan()) {
                MyTweetFragment.o(this.b).setVisibility(0);
                MyTweetFragment.o(this.b).setImageResource(2130838229);
            } else if (userInfoResult.isOfficial()) {
                MyTweetFragment.o(this.b).setVisibility(0);
                MyTweetFragment.o(this.b).setImageResource(2130838231);
            } else {
                MyTweetFragment.o(this.b).setVisibility(8);
            }
            if (this.a != null) {
                this.a.run();
            }
        }
    }
}
