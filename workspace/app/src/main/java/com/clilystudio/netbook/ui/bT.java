package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.widget.EditText;

import com.clilystudio.netbook.util.e;

final class bT
        implements View.OnClickListener {
    private /* synthetic */ SecretOpWebActivity a;

    bT(SecretOpWebActivity secretOpWebActivity) {
        this.a = secretOpWebActivity;
    }

    @Override
    public final void onClick(View view) {
        String string = ((EditText) this.a.findViewById(2131493194)).getText().toString().trim();
        if (string.startsWith("http://") || string.startsWith("https://")) {
            Intent intent = AdWebViewActivity.a(this.a, "\u6d4b\u8bd5", string);
            this.a.startActivity(intent);
            return;
        }
        e.a((Activity) this.a, (String) "\u8bf7\u8f93\u5165\u683c\u5f0f\u6b63\u786e\u7684url");
    }
}
