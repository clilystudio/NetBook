package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;

import com.clilystudio.netbook.d;

public class ShareRemoveAdActivity extends BaseActivity {
    public static Intent a(Context paramContext, String paramString) {
        return new d().a(paramContext, ShareRemoveAdActivity.class).a("entrance_type", paramString).a();
    }

    protected void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        if (com.arcsoft.hpay100.a.a.i()) {
            getWindow().setFlags(67108864, 67108864);
            a().a(new ColorDrawable(Color.parseColor("#00000000")));
        }
        setContentView(2130903130);
        b(2131034493);
        findViewById(2131493209).setOnClickListener(new ce(this));
    }
}

