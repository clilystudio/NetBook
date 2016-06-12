package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.view.View;
import android.view.View$OnClickListener;

final class bm implements View$OnClickListener {

    private GirlTopicActivity a;

    bm(GirlTopicActivity GirlTopicActivity1) {
        a = GirlTopicActivity1;
    }

    public final void onClick(View View1) {
        GirlTopicActivity.a(a, ((Integer) View1.getTag()).intValue());
        if (GirlTopicActivity.h(a)) {
            bs bs3 = new bs(a, (Activity) a, 2131034584);
            String[] String_1darray4 = new String[3];

            String_1darray4[0] = GirlTopicActivity.a(a).get_id();
            String_1darray4[1] = GirlTopicActivity.i(a).getToken();
            String_1darray4[2] = String.valueOf(GirlTopicActivity.j(a));
            bs3.b(String_1darray4);
        }
    }
}
