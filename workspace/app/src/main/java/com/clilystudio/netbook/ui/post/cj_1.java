package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.model.Follower;
import com.clilystudio.netbook.model.FollowersResult;
import com.clilystudio.netbook.util.e;

import java.util.ArrayList;
import java.util.Arrays;

final class cj
        extends com.clilystudio.netbook.a.e<String, Void, FollowersResult> {
    private Runnable a;
    private /* synthetic */ OtherUserActivity b;

    public cj(OtherUserActivity otherUserActivity, Runnable runnable) {
        this.b = otherUserActivity;
        this.a = runnable;
    }

    private static /* varargs */ FollowersResult a(String... arrstring) {
        try {
            b.a();
            FollowersResult followersResult = b.b().i(arrstring[0]);
            return followersResult;
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return cj.a((String[]) arrobject);
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        FollowersResult followersResult = (FollowersResult) object;
        super.onPostExecute(followersResult);
        if (followersResult != null && followersResult.getFollowers() != null) {
            OtherUserActivity.b(this.b, new ArrayList<Follower>(Arrays.asList(followersResult.getFollowers())));
            OtherUserActivity.e(this.b);
            if (this.a != null) {
                this.a.run();
            }
            return;
        }
        e.a((Activity) this.b, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5");
    }
}
