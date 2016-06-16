package com.clilystudio.netbook.reader;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;

import com.clilystudio.netbook.api.b;

public class BaseReadActivity extends FragmentActivity {
    protected b a = b.a();

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (a.a((Context) this, "customer_night_theme", false)) {
            this.setTheme(R.style.BaseTheme_Dark);
            return;
        }
        this.setTheme(R.style.BaseTheme);
    }

    @Override
    public void onPause() {
        super.onPause();
    }

    @Override
    public void onResume() {
        super.onResume();
    }
}
