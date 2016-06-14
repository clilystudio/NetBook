package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.FollowResult;

final class ci
        extends e<String, Void, FollowResult> {
    private /* synthetic */ OtherUserActivity a;

    private ci(OtherUserActivity otherUserActivity) {
        this.a = otherUserActivity;
    }

    /* synthetic */ ci(OtherUserActivity otherUserActivity, byte by) {
        this(otherUserActivity);
    }

    private static /* varargs */ FollowResult a(String... arrstring) {
        try {
            b.a();
            FollowResult followResult = b.b().n(arrstring[0], arrstring[1]);
            return followResult;
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return ci.a((String[]) arrobject);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        FollowResult followResult = (FollowResult) object;
        if (followResult != null && followResult.isOk()) {
            if (followResult.isFollowed()) {
                OtherUserActivity.a(this.a, 1);
            } else {
                OtherUserActivity.a(this.a, 0);
            }
        } else {
            OtherUserActivity.a(this.a, 0);
        }
        OtherUserActivity.z(this.a);
    }
}
