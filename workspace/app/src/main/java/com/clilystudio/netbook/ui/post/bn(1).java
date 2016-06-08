package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.TextView;

final class bn
        implements View.OnClickListener {
    bn(GirlTopicActivity paramGirlTopicActivity, TextView paramTextView) {
    }

    public final void onClick(View paramView) {
        GirlTopicActivity.e(this.b).findViewById(2131493085).setVisibility(0);
        this.a.setText("加载中...");
        GirlTopicActivity.b(this.b);
    }
}

