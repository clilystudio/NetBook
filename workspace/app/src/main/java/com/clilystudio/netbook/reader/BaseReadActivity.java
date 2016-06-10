package com.clilystudio.netbook.reader;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;

public class BaseReadActivity extends FragmentActivity {
    protected com.clilystudio.netbook.api.b a = com.clilystudio.netbook.api.b.a();

    protected void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        if (a.a(this, "customer_night_theme", false)) {
            setTheme(2131165359);
            return;
        }
        setTheme(2131165358);
    }

    public void onPause() {
        super.onPause();
        com.clilystudio.netbook.umeng.a_Pack.b.a(this);
    }

    public void onResume() {
        super.onResume();
        com.clilystudio.netbook.umeng.a_Pack.b.b(this);
    }
}

