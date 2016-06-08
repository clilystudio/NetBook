package com.clilystudio.netbook.adapter;

import android.view.View;

import com.clilystudio.netbook.model.Tweet;

final class N
        implements View.OnClickListener {
    N(G paramG, R paramR, Tweet paramTweet) {
    }

    public final void onClick(View paramView) {
        h localh = new h(this.a.q.getContext()).a(true);
        localh.e = "确定删除动态？";
        localh.b("取消", new P(this)).a("确定", new O(this)).b();
    }
}

