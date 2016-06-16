package com.clilystudio.netbook.ui;

import android.os.Bundle;

public class SecretOpWebActivity extends BaseActivity {
    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_secret_op_web);
        this.b("\u94fe\u63a5\u6d4b\u8bd5");
        this.findViewById(R.id.btn_access_url).setOnClickListener(new bT(this));
    }
}
