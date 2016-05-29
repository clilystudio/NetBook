package com.clilystudio.app.netbook.ui.post;

import android.view.View;

final class cf
        implements View.OnClickListener {
    cf(OtherUserActivity paramOtherUserActivity) {
    }

    public final void onClick(View paramView) {
        if ((OtherUserActivity.l(this.a) == null) && (OtherUserActivity.m(this.a) != 0)) {
            if (OtherUserActivity.n(this.a) != null)
                OtherUserActivity.n(this.a).cancel(true);
            OtherUserActivity.a(this.a, new cj(this.a, new cg(this)));
            cj localcj = OtherUserActivity.n(this.a);
            String[] arrayOfString = new String[1];
            arrayOfString[0] = OtherUserActivity.k(this.a);
            localcj.b(arrayOfString);
            return;
        }
        OtherUserActivity.o(this.a);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.cf
 * JD-Core Version:    0.6.2
 */