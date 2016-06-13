package com.clilystudio.netbook.ui.user;

import android.content.Context;
import android.os.Bundle;
import android.support.design.widget.am;

import com.clilystudio.netbook.ui.BaseActivity;

public class MyMessageActivity
        extends BaseActivity {
    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903115);
        this.b("\u6211\u7684\u6d88\u606f");
    }

    @Override
    public void onPause() {
        super.onPause();
        am.j((Context) this);
    }
}
