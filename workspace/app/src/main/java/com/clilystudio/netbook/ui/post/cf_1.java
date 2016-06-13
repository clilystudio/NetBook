package com.clilystudio.netbook.ui.post;

import android.view.View;

final class cf
        implements View.OnClickListener {
    final /* synthetic */ OtherUserActivity a;

    cf(OtherUserActivity otherUserActivity) {
        this.a = otherUserActivity;
    }

    @Override
    public final void onClick(View view) {
        if (OtherUserActivity.l(this.a) == null && OtherUserActivity.m(this.a) != 0) {
            if (OtherUserActivity.n(this.a) != null) {
                OtherUserActivity.n(this.a).cancel(true);
            }
            OtherUserActivity.a(this.a, new cj(this.a, new cg(this)));
            cj cj2 = OtherUserActivity.n(this.a);
            String[] arrstring = new String[]{OtherUserActivity.k(this.a)};
            cj2.b(arrstring);
            return;
        }
        OtherUserActivity.o(this.a);
    }
}
