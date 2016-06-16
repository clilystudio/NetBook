package com.clilystudio.netbook.ui.feed;

import android.content.Context;
import android.os.Bundle;
import android.widget.Button;

import com.clilystudio.netbook.hpay100.a.a;
import com.clilystudio.netbook.ui.BaseActivity;

public class FeedIntroActivity extends BaseActivity {
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_feed_intro);
        this.b(R.string.feed_intro);
        ((Button) this.findViewById(R.id.feed_intro_btn)).setOnClickListener(new d(this));
    }

    @Override
    public void onPause() {
        super.onPause();
        a.b((Context) this, "feed_intro", false);
    }
}
