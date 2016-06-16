package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.app.AlertDialog;
import android.os.Bundle;
import com.clilystudio.netbook.am;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.aa;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;

public class AddReviewContentActivity extends BaseActivity {
    private String a;
    private int b = 0;
    private EditText c;
    private EditText e;
    private boolean f;
    private boolean g;

    static /* synthetic */ boolean a(AddReviewContentActivity addReviewContentActivity) {
        String string = addReviewContentActivity.c.getText().toString().trim();
        String string2 = addReviewContentActivity.e.getText().toString().trim();
        if (a.Q(string)) {
            e.a((Activity) addReviewContentActivity, (String) "\u8bf7\u8f93\u5165\u4e66\u8bc4\u6807\u9898");
            return false;
        }
        if (string.length() < 4) {
            e.a((Activity) addReviewContentActivity, (String) "\u6807\u9898\u5b57\u6570\u4e0d\u80fd\u5c11\u4e8e4\u5b57");
            return false;
        }
        if (a.Q(string2)) {
            e.a((Activity) addReviewContentActivity, (String) "\u8bf7\u8f93\u5165\u4e66\u8bc4\u6b63\u6587");
            return false;
        }
        if (!a.Q(string2) && string2.length() < 50) {
            e.a((Activity) addReviewContentActivity, (String) "\u5185\u5bb9\u5b57\u6570\u4e0d\u80fd\u5c11\u4e8e50\u5b57");
            return false;
        }
        return true;
    }

    static /* synthetic */ void b(AddReviewContentActivity addReviewContentActivity) {
        Account account = am.e();
        if (account == null) {
            e.a((Activity) addReviewContentActivity, (String) "\u8bf7\u767b\u5f55\u540e\u518d\u53d1\u5e03");
            addReviewContentActivity.startActivity(AuthLoginActivity.a(addReviewContentActivity));
            return;
        }
        if (account.getUser().getLv() >= 3) {
            String string = account.getToken();
            h h2 = new h(addReviewContentActivity);
            View view = LayoutInflater.from(addReviewContentActivity).inflate(R.layout.dialog_waring_text, null);
            ((TextView) view.findViewById(R.id.waring_content)).setText(R.string.waring_dialog_review);
            h2.d = "\u53d1\u5e03";
            h2.a(R.string.vote_ok, null);
            h2.b(R.string.cancel, null);
            AlertDialog alertDialog = h2.a(view).b();
            ((Button) alertDialog.findViewById(16908313)).setOnClickListener(new E(addReviewContentActivity, alertDialog, string));
            return;
        }
        e.a((Activity) addReviewContentActivity, (String) "\u5f88\u62b1\u6b49\uff0c\u60a8\u7684\u7b49\u7ea7\u4e0d\u591f");
    }

    static /* synthetic */ EditText c(AddReviewContentActivity addReviewContentActivity) {
        return addReviewContentActivity.c;
    }

    static /* synthetic */ EditText d(AddReviewContentActivity addReviewContentActivity) {
        return addReviewContentActivity.e;
    }

    static /* synthetic */ String e(AddReviewContentActivity addReviewContentActivity) {
        return addReviewContentActivity.a;
    }

    static /* synthetic */ int f(AddReviewContentActivity addReviewContentActivity) {
        return addReviewContentActivity.b;
    }

    static /* synthetic */ boolean g(AddReviewContentActivity addReviewContentActivity) {
        return addReviewContentActivity.g;
    }

    static /* synthetic */ boolean h(AddReviewContentActivity addReviewContentActivity) {
        return addReviewContentActivity.f;
    }

    static /* synthetic */ void i(AddReviewContentActivity addReviewContentActivity) {
        MyApplication.a().a(new String[]{"saveToLocalReviewTitle", "saveToLocalReviewDesc"});
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onBackPressed() {
        String string = this.c.getText().toString();
        String string2 = this.e.getText().toString();
        boolean bl = !a.Q(string) || !a.Q(string2);
        if (bl) {
            String string3 = this.c.getText().toString();
            String string4 = this.e.getText().toString();
            if (!a.Q(string3)) {
                MyApplication.a().a("saveToLocalReviewTitle", string3);
            }
            if (!a.Q(string4)) {
                MyApplication.a().a("saveToLocalReviewDesc", string4);
            }
        }
        super.onBackPressed();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_add_review_content);
        Bundle bundle2 = this.getIntent().getExtras();
        if (bundle2 != null) {
            this.g = "BOOK_COMMENT".equals(bundle2.getString("INTENT_TYPE_NAME"));
        }
        this.a(R.string.add_review_content_title, R.string.publish, (aa) new D(this));
        this.a = this.getIntent().getStringExtra("bookReviewBookId");
        this.b = this.getIntent().getIntExtra("bookReviewBookRating", 0);
        this.f = this.getIntent().getBooleanExtra("isFromBookReviewList", false);
        this.c = (EditText) this.findViewById(R.id.add_review_content_title);
        this.e = (EditText) this.findViewById(R.id.add_review_content_desc);
        am.a((EditText) this.c, (String) "saveToLocalReviewTitle");
        am.a((EditText) this.e, (String) "saveToLocalReviewDesc");
    }
}
