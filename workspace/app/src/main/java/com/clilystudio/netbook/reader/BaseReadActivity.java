package com.clilystudio.netbook.reader;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.api.ApiServiceProvider;

public class BaseReadActivity extends FragmentActivity {
    protected ApiServiceProvider a = ApiServiceProvider.getInstance();

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (com.clilystudio.netbook.hpay100.a.a.a(this, "customer_night_theme", false)) {
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
