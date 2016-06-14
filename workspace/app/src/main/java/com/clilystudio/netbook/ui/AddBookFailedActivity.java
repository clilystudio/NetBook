package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.TextView;

import com.clilystudio.netbook.d;

public class AddBookFailedActivity extends BaseActivity {
    public static Intent a(Context context, String string) {
        return new d().a(context, AddBookFailedActivity.class).a("bookTitle", string).a();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903073);
        this.b(2131034288);
        String string = this.getIntent().getStringExtra("bookTitle");
        ((TextView) this.findViewById(2131493064)).setText("\u8ffd\u4e66\u541b\u6b63\u5954\u8d70\u5728\u627e\u300a" + string + "\u300b\u7684\u8def\u4e0a\uff0c\u8bf7\u8010\u5fc3\u7b49\u5f85");
    }
}
