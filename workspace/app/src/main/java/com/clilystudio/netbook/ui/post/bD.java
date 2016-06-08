package com.clilystudio.netbook.ui.post;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.model.GirlTopicSummary;

final class bD
        implements AdapterView.OnItemClickListener {
    bD(GirlTopicListActivity paramGirlTopicListActivity) {
    }

    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        int i = paramInt - GirlTopicListActivity.i(this.a).getHeaderViewsCount();
        if ((i >= 0) && (i < GirlTopicListActivity.j(this.a).size())) {
            GirlTopicSummary localGirlTopicSummary = (GirlTopicSummary) GirlTopicListActivity.j(this.a).get(i);
            if (localGirlTopicSummary != null) {
                Intent localIntent = new Intent(this.a, GirlTopicActivity.class);
                localIntent.putExtra("extraGirlTopicId", localGirlTopicSummary.get_id());
                this.a.startActivity(localIntent);
            }
        }
    }
}

