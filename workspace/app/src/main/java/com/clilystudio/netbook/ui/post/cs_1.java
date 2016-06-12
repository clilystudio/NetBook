package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.view.View;
import android.view.View$OnClickListener;

final class cs implements View$OnClickListener {

    private PostDetailActivity a;

    cs(PostDetailActivity PostDetailActivity1) {
        a = PostDetailActivity1;
    }

    public final void onClick(View View1) {
        PostDetailActivity.a(a, ((Integer) View1.getTag()).intValue());
        if (PostDetailActivity.k(a)) {
            cx cx3 = new cx(a, (Activity) a, 2131034584);
            String[] String_1darray4 = new String[3];

            String_1darray4[0] = PostDetailActivity.a(a).get_id();
            String_1darray4[1] = PostDetailActivity.i(a).getToken();
            String_1darray4[2] = String.valueOf(PostDetailActivity.h(a));
            cx3.b(String_1darray4);
        }
    }
}
