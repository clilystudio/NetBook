package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.model.UserInfoResult;

final class cn extends e<String, Void, UserInfoResult> {
    private Runnable a;
    private /* synthetic */ OtherUserActivity b;

    public cn(OtherUserActivity otherUserActivity, Runnable runnable) {
        this.b = otherUserActivity;
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
        return cn.a((String[]) arrobject);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        UserInfoResult userInfoResult = (UserInfoResult) object;
        super.onPostExecute(userInfoResult);
        if (userInfoResult != null) {
            OtherUserActivity.s(this.b).setImageUrl(userInfoResult.getFullAvatar());
            OtherUserActivity.b(this.b, userInfoResult.getFollowers());
            OtherUserActivity.c(this.b, userInfoResult.getFollowings());
            if (userInfoResult.isDoyan()) {
                OtherUserActivity.t(this.b).setVisibility(0);
                OtherUserActivity.t(this.b).setImageResource(2130838229);
            } else if (userInfoResult.isOfficial()) {
                OtherUserActivity.t(this.b).setVisibility(0);
                OtherUserActivity.t(this.b).setImageResource(2130838231);
            } else {
                OtherUserActivity.t(this.b).setVisibility(8);
            }
            if (this.a != null) {
                this.a.run();
            }
        }
    }
}
