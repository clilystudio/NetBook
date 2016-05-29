package com.clilystudio.app.netbook.ui;

import android.content.Intent;
import android.view.View;

import com.clilystudio.app.netbook.model.RecommendUgcRoot.RecommendUGC;
import com.clilystudio.app.netbook.ui.ugcbook.UGCDetailActivity;

final class bC
        implements View.OnClickListener {
    bC(RelateUgcFragment.GetUgcsTask paramGetUgcsTask, RecommendUgcRoot.RecommendUGC paramRecommendUGC) {
    }

    public final void onClick(View paramView) {
        Intent localIntent = new Intent(this.b.a.getActivity(), UGCDetailActivity.class);
        localIntent.putExtra("book_id", this.a.getId());
        this.b.a.startActivity(localIntent);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.bC
 * JD-Core Version:    0.6.2
 */