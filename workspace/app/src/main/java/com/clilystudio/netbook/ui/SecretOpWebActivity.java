package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.util.*;

public class SecretOpWebActivity extends BaseActivity {
    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_secret_op_web);
        this.b("\u94fe\u63a5\u6d4b\u8bd5");
        this.findViewById(R.id.btn_access_url).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String string = ((EditText) SecretOpWebActivity.this.findViewById(R.id.edt_test_url)).getText().toString().trim();
                if (string.startsWith("http://") || string.startsWith("https://")) {
                    Intent intent = AdWebViewActivity.a(SecretOpWebActivity.this, "\u6d4b\u8bd5", string);
                    SecretOpWebActivity.this.startActivity(intent);
                    return;
                }
                com.clilystudio.netbook.util.e.a((Activity) SecretOpWebActivity.this, (String) "\u8bf7\u8f93\u5165\u683c\u5f0f\u6b63\u786e\u7684url");
            }
        });
    }
}
