package com.clilystudio.netbook.ui;

import android.content.Intent;
import android.view.View;

import com.clilystudio.netbook.ui.ugcbook.UGCDetailActivity;

final class bC implements View.OnClickListener {
    private /* synthetic */ RecommendUgcRoot$RecommendUGC a;
    private /* synthetic */ RelateUgcFragment$GetUgcsTask b;

    bC(RelateUgcFragment$GetUgcsTask getUgcsTask, RecommendUgcRoot$RecommendUGC recommendUGC) {
        this.b = getUgcsTask;
        this.a = recommendUGC;
    }

    @Override
    public final void onClick(View view) {
        Intent intent = new Intent(this.b.a.getActivity(), UGCDetailActivity.class);
        intent.putExtra("book_id", this.a.getId());
        this.b.a.startActivity(intent);
    }
}
