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
        this.b("链接测试");
    }
}
