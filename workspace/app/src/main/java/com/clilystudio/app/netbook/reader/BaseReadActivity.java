package com.clilystudio.app.netbook.reader;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;

import com.arcsoft.hpay100.a.a;

public class BaseReadActivity extends FragmentActivity {
    protected com.clilystudio.app.netbook.api.b a = com.clilystudio.app.netbook.api.b.a();

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
        com.umeng.a.b.a(this);
    }

    public void onResume() {
        super.onResume();
        com.umeng.a.b.b(this);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.BaseReadActivity
 * JD-Core Version:    0.6.2
 */