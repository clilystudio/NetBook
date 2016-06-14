package com.clilystudio.netbook.wxapi;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

import com.e.a.a.d.b;
import com.e.a.a.g.a;
import com.e.a.a.g.c;

public class WXEntryActivity extends Activity
        implements com.e.a.a.g.b {
    private a a;

    @Override
    public final void a(b b2) {
        this.finish();
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a = c.a(this, "wx29eb03c379f4bf24", false);
        this.a.a(this.getIntent(), this);
    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.setIntent(intent);
        this.a.a(intent, this);
    }
}
