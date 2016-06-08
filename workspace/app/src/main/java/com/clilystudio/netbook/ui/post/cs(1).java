package com.clilystudio.netbook.ui.post;

import android.view.View;

final class cs
        implements View.OnClickListener {
    cs(PostDetailActivity paramPostDetailActivity) {
    }

    public final void onClick(View paramView) {
        PostDetailActivity.a(this.a, ((Integer) paramView.getTag()).intValue());
        if (PostDetailActivity.k(this.a)) {
            cx localcx = new cx(this.a, this.a, 2131034584);
            String[] arrayOfString = new String[3];
            arrayOfString[0] = PostDetailActivity.a(this.a).get_id();
            arrayOfString[1] = PostDetailActivity.i(this.a).getToken();
            arrayOfString[2] = String.valueOf(PostDetailActivity.h(this.a));
            localcx.b(arrayOfString);
        }
    }
}

