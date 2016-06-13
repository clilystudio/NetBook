package com.clilystudio.netbook.ui.post;

import android.view.View;

final class cd
        implements View.OnClickListener {
    final /* synthetic */ OtherUserActivity a;

    cd(OtherUserActivity otherUserActivity) {
        this.a = otherUserActivity;
    }

    @Override
    public final void onClick(View view) {
        if (OtherUserActivity.g(this.a) == null && OtherUserActivity.h(this.a) != 0) {
            if (OtherUserActivity.i(this.a) != null) {
                OtherUserActivity.i(this.a).cancel(true);
            }
            OtherUserActivity.a(this.a, new ck(this.a, new ce(this)));
            ck ck2 = OtherUserActivity.i(this.a);
            String[] arrstring = new String[]{OtherUserActivity.k(this.a)};
            ck2.b(arrstring);
            return;
        }
        OtherUserActivity.j(this.a);
    }
}
