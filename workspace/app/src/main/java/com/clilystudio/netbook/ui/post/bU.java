package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.model.Follower;
import com.clilystudio.netbook.model.FollowersResult;
import com.clilystudio.netbook.util.e;

import java.util.ArrayList;
import java.util.Arrays;

final class bU
        extends com.clilystudio.netbook.a.e<String, Void, FollowersResult> {
    private Runnable a;
    private /* synthetic */ MyTweetFragment b;

    public bU(MyTweetFragment myTweetFragment, Runnable runnable) {
        this.b = myTweetFragment;
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
        return bU.a((String[]) arrobject);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        FollowersResult followersResult = (FollowersResult) object;
        super.onPostExecute(followersResult);
        if (this.b.getActivity() == null) return;
        if (followersResult != null && followersResult.getFollowers() != null) {
            MyTweetFragment.b(this.b, new ArrayList<Follower>(Arrays.asList(followersResult.getFollowers())));
            MyTweetFragment.e(this.b);
            if (this.a == null) return;
            this.a.run();
            return;
        }
        e.a((Activity) this.b.getActivity(), (String) "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5");
    }
}
