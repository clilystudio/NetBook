package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.EditText;

import com.clilystudio.netbook.util.e;

final class bT implements View$OnClickListener {

    private SecretOpWebActivity a;

    bT(SecretOpWebActivity SecretOpWebActivity1) {
        a = SecretOpWebActivity1;
    }

    public final void onClick(View View1) {
        String String2 = ((EditText) a.findViewById(2131493194)).getText().toString().trim();

        if (String2.startsWith("http://") || String2.startsWith("https://")) {
            Intent Intent3 = AdWebViewActivity.a((Context) a, "\u6D4B\u8BD5", String2);

            a.startActivity(Intent3);
        } else
            e.a((Activity) a, "\u8BF7\u8F93\u5165\u683C\u5F0F\u6B63\u786E\u7684url");
    }
}
