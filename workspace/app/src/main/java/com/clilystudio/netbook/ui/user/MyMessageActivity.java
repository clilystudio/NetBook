package com.clilystudio.netbook.ui.user;

import android.content.Context;
import android.os.Bundle;
import com.clilystudio.netbook.am;

import com.clilystudio.netbook.ui.BaseActivity;

public class MyMessageActivity extends BaseActivity {
    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_my_message);
        this.b("\u6211\u7684\u6d88\u606f");
    }

    @Override
    public void onPause() {
        super.onPause();
        am.j((Context) this);
    }
}
