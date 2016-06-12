package com.clilystudio.netbook.reader;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;

public class BaseReadActivity extends FragmentActivity {

    protected com.clilystudio.netbook.api.b a = com.clilystudio.netbook.api.b.a();

    protected void onCreate(Bundle Bundle1) {
        super.onCreate(Bundle1);
        if (com.clilystudio.netbook.hpay100.a.a.a((Context) this, "customer_night_theme", false))
            setTheme(2131165359);
        else
            setTheme(2131165358);
    }

    public void onPause() {
        super.onPause();
        com.umeng.a.b.a((Context) this);
    }

    public void onResume() {
        super.onResume();
        com.umeng.a.b.b((Context) this);
    }
}
