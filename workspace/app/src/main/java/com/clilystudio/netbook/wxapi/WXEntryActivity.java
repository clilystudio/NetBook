package com.clilystudio.netbook.wxapi;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

import com.e.a.a.g.c;

public class WXEntryActivity extends Activity implements com.e.a.a.g.b {

    private com.e.a.a.g.a a;

    public final void a(com.e.a.a.d.b b1) {
        finish();
    }

    protected void onCreate(Bundle Bundle1) {
        super.onCreate(Bundle1);
        a = c.a((Context) this, "wx29eb03c379f4bf24", false);
        a.a(getIntent(), this);
    }

    protected void onNewIntent(Intent Intent1) {
        super.onNewIntent(Intent1);
        setIntent(Intent1);
        a.a(Intent1, this);
    }
}
