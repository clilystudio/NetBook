package com.clilystudio.netbook.adapter;

import android.content.DialogInterface;
import android.view.View;

import com.clilystudio.netbook.model.Tweet;

final class N implements View.OnClickListener {
    final /* synthetic */ R a;
    final /* synthetic */ Tweet b;
    final /* synthetic */ G c;

    N(G g, R r, Tweet tweet) {
        this.c = g;
        this.a = r;
        this.b = tweet;
    }

    @Override
    public final void onClick(View view) {
        h h2 = new h(this.a.q.getContext()).a(true);
        h2.e = "\u786e\u5b9a\u5220\u9664\u52a8\u6001\uff1f";
        h2.b("\u53d6\u6d88", (DialogInterface.OnClickListener) new P(this)).a("\u786e\u5b9a", (DialogInterface.OnClickListener) new O(this)).b();
    }
}
