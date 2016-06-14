package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.widget.EditText;

import com.clilystudio.netbook.util.e;

public class CustomSearchActivity extends BaseActivity {
    private EditText a;
    private EditText b;

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void a(CustomSearchActivity customSearchActivity) {
        String string = customSearchActivity.a.getText().toString();
        String string2 = customSearchActivity.b.getText().toString();
        if (a.Q(string)) {
            e.a((Activity) customSearchActivity, (String) "\u4e66\u540d\u4e0d\u80fd\u4e3a\u7a7a");
            return;
        }
        if (a.Q(string2)) {
            e.a((Activity) customSearchActivity, (String) "\u4f5c\u8005\u4e0d\u80fd\u4e3a\u7a7a");
            return;
        }
        boolean bl = true;
        if (bl) {
            String string3 = Build.BRAND + " " + Build.MODEL;
            ba ba2 = new ba(customSearchActivity, (Activity) customSearchActivity, 2131034324);
            Object[] arrobject = new String[]{customSearchActivity.a.getText().toString().trim(), customSearchActivity.b.getText().toString().trim(), string3};
            ba2.b(arrobject);
        }
    }

    static /* synthetic */ void b(CustomSearchActivity customSearchActivity) {
        customSearchActivity.startActivity(AddBookFailedActivity.a(customSearchActivity, customSearchActivity.a.getText().toString()));
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903094);
        this.a(2131034288, 2131034282, (aa) new aZ(this));
        this.a = (EditText) this.findViewById(2131493119);
        this.b = (EditText) this.findViewById(2131493120);
        Intent intent = this.getIntent();
        if (intent != null) {
            String string = intent.getStringExtra("AddBookKey");
            if (string != null) {
                this.a.setText(string);
            }
            String string2 = intent.getStringExtra("extra_author");
            this.b.setText(string2);
        }
    }
}
