package com.clilystudio.netbook.wxapi;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

import com.e.a.a.g.a;
import com.e.a.a.g.c;

public class WXEntryActivity extends Activity
        implements com.e.a.a.g.b {
    private a a;

    public final void a(com.e.a.a.d.b paramb) {
        finish();
    }

    protected void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        this.a = c.a(this, "wx29eb03c379f4bf24", false);
        this.a.a(getIntent(), this);
    }

    protected void onNewIntent(Intent paramIntent) {
        super.onNewIntent(paramIntent);
        setIntent(paramIntent);
        this.a.a(paramIntent, this);
    }
}

