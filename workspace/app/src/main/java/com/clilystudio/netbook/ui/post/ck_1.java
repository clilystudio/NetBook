package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.model.Follower;
import com.clilystudio.netbook.model.FollowingsResult;
import com.clilystudio.netbook.util.e;

import java.util.ArrayList;
import java.util.Arrays;

final class ck
        extends com.clilystudio.netbook.a_pack.e<String, Void, FollowingsResult> {
    private Runnable a;
    private /* synthetic */ OtherUserActivity b;

    public ck(OtherUserActivity otherUserActivity, Runnable runnable) {
        this.b = otherUserActivity;
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
        return ck.a((String[]) arrobject);
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        FollowingsResult followingsResult = (FollowingsResult) object;
        super.onPostExecute(followingsResult);
        if (followingsResult != null && followingsResult.getFollowings() != null) {
            OtherUserActivity.a(this.b, new ArrayList<Follower>(Arrays.asList(followingsResult.getFollowings())));
            OtherUserActivity.f(this.b);
            if (this.a != null) {
                this.a.run();
            }
            return;
        }
        e.a((Activity) this.b, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5");
    }
}
