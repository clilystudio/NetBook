package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import com.clilystudio.netbook.am;

import com.clilystudio.netbook.db.FollowRecord;
import com.clilystudio.netbook.model.Follower;
import com.clilystudio.netbook.model.FollowingsResult;
import com.clilystudio.netbook.util.e;

import java.util.ArrayList;
import java.util.Arrays;

final class bV extends com.clilystudio.netbook.a_pack.e<String, Void, FollowingsResult> {
    private Runnable a;
    private /* synthetic */ MyTweetFragment b;

    public bV(MyTweetFragment myTweetFragment, Runnable runnable) {
        this.b = myTweetFragment;
        this.a = runnable;
    }

    private static /* varargs */ FollowingsResult a(String... arrstring) {
        try {
            b.a();
            FollowingsResult followingsResult = b.b().h(arrstring[0]);
            return followingsResult;
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return bV.a((String[]) arrobject);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        FollowingsResult followingsResult = (FollowingsResult) object;
        super.onPostExecute(followingsResult);
        if (this.b.getActivity() == null) return;
        if (followingsResult != null && followingsResult.getFollowings() != null) {
            MyTweetFragment.a(this.b, new ArrayList<Follower>(Arrays.asList(followingsResult.getFollowings())));
            FollowRecord.clear(am.e().getUser().getId());
            FollowRecord.save2DB(followingsResult.getFollowings());
            MyTweetFragment.d(this.b);
            if (this.a == null) return;
            this.a.run();
            return;
        }
        e.a((Activity) this.b.getActivity(), (String) "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5");
    }
}
