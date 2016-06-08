package com.clilystudio.netbook.ui.post;

import android.view.View;

final class cd
        implements View.OnClickListener {
    cd(OtherUserActivity paramOtherUserActivity) {
    }

    public final void onClick(View paramView) {
        if ((OtherUserActivity.g(this.a) == null) && (OtherUserActivity.h(this.a) != 0)) {
            if (OtherUserActivity.i(this.a) != null)
                OtherUserActivity.i(this.a).cancel(true);
            OtherUserActivity.a(this.a, new ck(this.a, new ce(this)));
            ck localck = OtherUserActivity.i(this.a);
            String[] arrayOfString = new String[1];
            arrayOfString[0] = OtherUserActivity.k(this.a);
            localck.b(arrayOfString);
            return;
        }
        OtherUserActivity.j(this.a);
    }
}

