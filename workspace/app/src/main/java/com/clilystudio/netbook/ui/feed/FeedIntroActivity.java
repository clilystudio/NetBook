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
        this.setContentView(2130903098);
        this.b(2131034381);
        ((Button) this.findViewById(2131493126)).setOnClickListener(new d(this));
    }

    @Override
    public void onPause() {
        super.onPause();
        a.b((Context) this, "feed_intro", false);
    }
}
