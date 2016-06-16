package com.clilystudio.netbook.ui.user;

import android.os.Bundle;

import com.clilystudio.netbook.ui.BaseActivity;

public class ChargeHelperActivity extends BaseActivity {
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_charge_help);
        this.b(R.string.charge_help_title);
    }
}
