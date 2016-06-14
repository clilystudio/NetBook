package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import android.support.design.widget.am;

import com.clilystudio.netbook.model.Tweet;

final class ch implements j {
    private /* synthetic */ OtherUserActivity a;

    ch(OtherUserActivity otherUserActivity) {
        this.a = otherUserActivity;
    }

    @Override
    public final void a() {
        if (OtherUserActivity.b(this.a) == null || OtherUserActivity.b(this.a).getStatus() == AsyncTask.Status.FINISHED) {
            OtherUserActivity.p(this.a).setVisibility(View.VISIBLE);
            if (!am.a(OtherUserActivity.q(this.a))) {
                OtherUserActivity.q(this.a).cancel(true);
            }
            OtherUserActivity.a(this.a, new cl(this.a, 0));
            String string = "";
            if (OtherUserActivity.r(this.a).size() > 0) {
                string = ((Tweet) OtherUserActivity.r(this.a).get(-1 + OtherUserActivity.r(this.a).size())).get_id();
            }
            cl cl2 = OtherUserActivity.b(this.a);
            String[] arrstring = new String[]{OtherUserActivity.k(this.a), string};
            cl2.b(arrstring);
        }
    }
}
