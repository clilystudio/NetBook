package com.clilystudio.netbook.ui.post;

import android.view.View;

final class cs implements View.OnClickListener {
    private /* synthetic */ PostDetailActivity a;

    cs(PostDetailActivity postDetailActivity) {
        this.a = postDetailActivity;
    }

    @Override
    public final void onClick(View view) {
        PostDetailActivity.a(this.a, (Integer) view.getTag());
        if (PostDetailActivity.k(this.a)) {
            cx cx2 = new cx(this.a, this.a, R.string.vote_send_loading);
            String[] arrstring = new String[]{PostDetailActivity.a(this.a).get_id(), PostDetailActivity.i(this.a).getToken(), String.valueOf(PostDetailActivity.h(this.a))};
            cx2.b(arrstring);
        }
    }
}
