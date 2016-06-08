package com.clilystudio.netbook.ui.feed;

import android.os.Bundle;
import android.widget.Button;

import com.clilystudio.netbook.ui.BaseActivity;

public class FeedIntroActivity extends BaseActivity {
    public void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        setContentView(2130903098);
        b(2131034381);
        ((Button) findViewById(2131493126)).setOnClickListener(new d(this));
    }

    public void onPause() {
        super.onPause();
        a.b(this, "feed_intro", false);
    }
}

