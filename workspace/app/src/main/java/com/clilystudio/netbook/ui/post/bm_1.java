package com.clilystudio.netbook.ui.post;

import android.view.View;

final class bm
        implements View.OnClickListener {
    private /* synthetic */ GirlTopicActivity a;

    bm(GirlTopicActivity girlTopicActivity) {
        this.a = girlTopicActivity;
    }

    @Override
    public final void onClick(View view) {
        GirlTopicActivity.a(this.a, (Integer) view.getTag());
        if (GirlTopicActivity.h(this.a)) {
            bs bs2 = new bs(this.a, this.a, 2131034584);
            String[] arrstring = new String[]{GirlTopicActivity.a(this.a).get_id(), GirlTopicActivity.i(this.a).getToken(), String.valueOf(GirlTopicActivity.j(this.a))};
            bs2.b(arrstring);
        }
    }
}
