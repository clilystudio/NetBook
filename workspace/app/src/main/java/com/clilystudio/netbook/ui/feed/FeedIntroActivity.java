package com.clilystudio.netbook.ui.feed;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.util.CommonUtil;
import com.clilystudio.netbook.ui.BaseActivity;

public class FeedIntroActivity extends BaseActivity {
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_feed_intro);
        this.b(R.string.feed_intro);
        this.findViewById(R.id.feed_intro_btn).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(FeedIntroActivity.this, FeedListActivity.class);
                FeedIntroActivity.this.startActivity(intent);
                FeedIntroActivity.this.finish();
            }
        });
    }

    @Override
    public void onPause() {
        super.onPause();
        CommonUtil.putBoolPref(this, "feed_intro", false);
    }
}
