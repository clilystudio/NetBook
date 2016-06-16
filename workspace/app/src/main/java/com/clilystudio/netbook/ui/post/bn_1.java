package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.TextView;

final class bn implements View.OnClickListener {
    private /* synthetic */ TextView a;
    private /* synthetic */ GirlTopicActivity b;

    bn(GirlTopicActivity girlTopicActivity, TextView textView) {
        this.b = girlTopicActivity;
        this.a = textView;
    }

    @Override
    public final void onClick(View view) {
        GirlTopicActivity.e(this.b).findViewById(R.id.pb_loading).setVisibility(View.VISIBLE);
        this.a.setText("\u52a0\u8f7d\u4e2d...");
        GirlTopicActivity.b(this.b);
    }
}
