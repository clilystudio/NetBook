package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.model.Tweet;

final class ch
        implements j {
    ch(OtherUserActivity paramOtherUserActivity) {
    }

    public final void a() {
        if ((OtherUserActivity.b(this.a) == null) || (OtherUserActivity.b(this.a).getStatus() == AsyncTask.Status.FINISHED)) {
            OtherUserActivity.p(this.a).setVisibility(0);
            if (!am.a(OtherUserActivity.q(this.a)))
                OtherUserActivity.q(this.a).cancel(true);
            OtherUserActivity.a(this.a, new cl(this.a, 0));
            String str = "";
            if (OtherUserActivity.r(this.a).size() > 0)
                str = ((Tweet) OtherUserActivity.r(this.a).get(-1 + OtherUserActivity.r(this.a).size())).get_id();
            cl localcl = OtherUserActivity.b(this.a);
            String[] arrayOfString = new String[2];
            arrayOfString[0] = OtherUserActivity.k(this.a);
            arrayOfString[1] = str;
            localcl.b(arrayOfString);
        }
    }
}

