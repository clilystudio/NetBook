package com.clilystudio.netbook.ui.post;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.model.GirlTopicSummary;

final class bD
        implements AdapterView.OnItemClickListener {
    private /* synthetic */ GirlTopicListActivity a;

    bD(GirlTopicListActivity girlTopicListActivity) {
        this.a = girlTopicListActivity;
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n, long l2) {
        GirlTopicSummary girlTopicSummary;
        int n2 = n - GirlTopicListActivity.i(this.a).getHeaderViewsCount();
        if (n2 >= 0 && n2 < GirlTopicListActivity.j(this.a).size() && (girlTopicSummary = (GirlTopicSummary) GirlTopicListActivity.j(this.a).get(n2)) != null) {
            Intent intent = new Intent(this.a, GirlTopicActivity.class);
            intent.putExtra("extraGirlTopicId", girlTopicSummary.get_id());
            this.a.startActivity(intent);
        }
    }
}
