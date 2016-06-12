package com.clilystudio.netbook.ui.ugcbook;

import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.os.Bundle;
import android.text.Selection;
import android.text.Spannable;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.aa;

public class UGCGuideAddCollectionActivity extends BaseActivity {

    private TextView a;
    private TextView b;
    private String c;
    private Author e;
    private boolean f;
// Error: Internal #201: 
// The following method may not be correct.

    static void a(UGCGuideAddCollectionActivity UGCGuideAddCollectionActivity1) {
    }

    static UGCNewCollection b(UGCGuideAddCollectionActivity UGCGuideAddCollectionActivity1) {
        return e();
    }

    static TextView c(UGCGuideAddCollectionActivity UGCGuideAddCollectionActivity1) {
        return UGCGuideAddCollectionActivity1.a;
    }

    static TextView d(UGCGuideAddCollectionActivity UGCGuideAddCollectionActivity1) {
        return UGCGuideAddCollectionActivity1.b;
    }

    static String e(UGCGuideAddCollectionActivity UGCGuideAddCollectionActivity1) {
        return UGCGuideAddCollectionActivity1.c;
    }

    static UGCNewCollection f(UGCGuideAddCollectionActivity UGCGuideAddCollectionActivity1) {
        return e();
    }

    static UGCNewCollection g(UGCGuideAddCollectionActivity UGCGuideAddCollectionActivity1) {
        return e();
    }

    static UGCNewCollection h(UGCGuideAddCollectionActivity UGCGuideAddCollectionActivity1) {
        return e();
    }

    public void onBackPressed() {
        String String1 = a.getText().toString();
        String String2 = b.getText().toString();
        int int3;

        label_22:
        {
            if (com.clilystudio.netbook.hpay100.a.a.Q(String1)) {
                boolean boolean6 = com.clilystudio.netbook.hpay100.a.a.Q(String2);

                int3 = 0;
                if (boolean6)
                    break label_22;
            }
            int3 = 1;
        }
        if (int3 != 0) {
            if (!f && c != null && !c.equals("") || e().getBooks().size() <= 0) {
                h h5 = new h((Context) this);

                h5.d = "\u63D0\u793A";
                h5.e = "\u79BB\u5F00\u5C06\u4E22\u5931\u5DF2\u8F93\u5165\u7684\u5185\u5BB9\uFF0C\u786E\u5B9A\u79BB\u5F00\uFF1F";
                h5.a("\u79BB\u5F00", (DialogInterface$OnClickListener) new D(this)).b("\u7EE7\u7EED\u7F16\u8F91", null).a().show();
            } else {
                h h4 = new h((Context) this);

                h4.d = "\u63D0\u793A";
                h4.e = "\u79BB\u5F00\u5C06\u4E22\u5931\u5DF2\u8F93\u5165\u7684\u5185\u5BB9\uFF0C\u662F\u5426\u4FDD\u5B58\u4E3A\u8349\u7A3F\uFF1F";
                h4.b("\u76F4\u63A5\u79BB\u5F00", (DialogInterface$OnClickListener) new F(this)).a("\u4FDD\u5B58\u5E76\u79BB\u5F00", (DialogInterface$OnClickListener) new E(this)).a().show();
            }
        } else
            finish();
    }

    protected void onCreate(Bundle Bundle1) {
        int int2;

        super.onCreate(Bundle1);
        setContentView(2130903135);
        i.a().a(this);
        a = (TextView) findViewById(2131493224);
        b = (TextView) findViewById(2131493225);
        c = getIntent().getStringExtra("ugc_id");
        f = getIntent().getBooleanExtra("is_draft", false);
        e = (Author) getIntent().getSerializableExtra("my_author");
        int2 = 2131034562;
        if (c != null && !c.equals("")) {
            UGCNewCollection UGCNewCollection3 = MyApplication.a().a;

            if (UGCNewCollection3 != null) {
                a.setText((CharSequence) UGCNewCollection3.getTitle());
                b.setText((CharSequence) UGCNewCollection3.getDesc());
                Selection.setSelection((Spannable) a.getEditableText(), a.getText().length());
            }
            int2 = 2131034563;
        } else
            MyApplication.a().a = new UGCNewCollection();
        a(int2, 2131034419, (aa) new C(this));
    }

    protected void onDestroy() {
        super.onDestroy();
        i.a().b(this);
    }

    public void onUgcDraftEvent(com.clilystudio.netbook.event.E E1) {
        finish();
    }
}
