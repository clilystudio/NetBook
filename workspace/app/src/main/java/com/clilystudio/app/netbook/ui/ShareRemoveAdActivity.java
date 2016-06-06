package com.clilystudio.app.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;

import com.clilystudio.app.netbook.d_IntentFactory;

public class ShareRemoveAdActivity extends BaseActivity {
    public static Intent a(Context paramContext, String paramString) {
        return new d_IntentFactory().a_setClass(paramContext, ShareRemoveAdActivity.class).a_putExtra("entrance_type", paramString).a();
    }

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (Build.VERSION.SDK_INT > 19) {
            getWindow().setFlags(67108864, 67108864);
            a().a(new ColorDrawable(Color.parseColor("#00000000")));
        }
        setContentView(2130903130);
        b_initContentView(2131034493);
        findViewById(2131493209).setOnClickListener(new ce(this));
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ShareRemoveAdActivity
 * JD-Core Version:    0.6.2
 */