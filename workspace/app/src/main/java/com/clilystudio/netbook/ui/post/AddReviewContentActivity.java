package com.clilystudio.netbook.ui.post;

import android.os.Bundle;
import android.widget.EditText;

import com.arcsoft.hpay100.a.a;
import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.ui.BaseActivity;

public class AddReviewContentActivity extends BaseActivity {
    private String a;
    private int b = 0;
    private EditText c;
    private EditText e;
    private boolean f;
    private boolean g;

    public void onBackPressed() {
        String str1 = this.c.getText().toString();
        String str2 = this.e.getText().toString();
        if ((!a.Q(str1)) || (!a.Q(str2))) ;
        for (int i = 1; ; i = 0) {
            if (i != 0) {
                String str3 = this.c.getText().toString();
                String str4 = this.e.getText().toString();
                if (!a.Q(str3))
                    MyApplication.a().a("saveToLocalReviewTitle", str3);
                if (!a.Q(str4))
                    MyApplication.a().a("saveToLocalReviewDesc", str4);
            }
            super.onBackPressed();
            return;
        }
    }

    public void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        setContentView(2130903077);
        Bundle localBundle = getIntent().getExtras();
        if (localBundle != null)
            this.g = "BOOK_COMMENT".equals(localBundle.getString("INTENT_TYPE_NAME"));
        a(2131034295, 2131034448, new D(this));
        this.a = getIntent().getStringExtra("bookReviewBookId");
        this.b = getIntent().getIntExtra("bookReviewBookRating", 0);
        this.f = getIntent().getBooleanExtra("isFromBookReviewList", false);
        this.c = ((EditText) findViewById(2131493070));
        this.e = ((EditText) findViewById(2131493071));
        am.a(this.c, "saveToLocalReviewTitle");
        am.a(this.e, "saveToLocalReviewDesc");
    }
}

