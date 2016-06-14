package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.am;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.aa;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;

public class AddVoteActivity extends BaseActivity {
    private EditText a;
    private EditText b;
    private View c;
    private String e;
    private String f;
    private boolean g;
    private boolean h;
    private String[] i;
    private int j;
    private String k;
    private String l;

    static /* synthetic */ EditText a(AddVoteActivity addVoteActivity) {
        return addVoteActivity.a;
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void a(AddVoteActivity addVoteActivity, View view) {
        Account account;
        boolean bl = addVoteActivity.b.getText().toString().trim().length() > 10000;
        if (bl) {
            e.a((Activity) addVoteActivity, (int) 2131034305);
            return;
        }
        if (addVoteActivity.g) {
            if (!addVoteActivity.f()) return;
            {
                am.a((Context) addVoteActivity, (View) view);
                String string = addVoteActivity.a.getText().toString();
                String string2 = addVoteActivity.b.getText().toString();
                Intent intent = new Intent(addVoteActivity, AddVoteItemActivity.class);
                intent.putExtra("book_post_list_bookId", addVoteActivity.e);
                intent.putExtra("book_post_list_bookTitle", addVoteActivity.f);
                intent.putExtra("add_vote_title", string);
                intent.putExtra("add_vote_desc", string2);
                intent.putExtra("book_post_list_from_reader", addVoteActivity.h);
                intent.putExtra("block", addVoteActivity.l);
                if (addVoteActivity.i != null) {
                    intent.putExtra("lastContentArray", addVoteActivity.i);
                }
                addVoteActivity.startActivityForResult(intent, 0);
                return;
            }
        }
        if (!addVoteActivity.f()) return;
        {
            am.a((Context) addVoteActivity, (View) view);
            account = am.e();
            if (account == null) {
                e.a((Activity) addVoteActivity, (String) "\u8bf7\u767b\u5f55\u540e\u518d\u53d1\u5e03");
                addVoteActivity.startActivity(AuthLoginActivity.a(addVoteActivity));
                return;
            }
        }
        String string = account.getToken();
        h h2 = new h(addVoteActivity);
        View view2 = LayoutInflater.from(addVoteActivity).inflate(2130903202, null);
        TextView textView = (TextView) view2.findViewById(2131493422);
        if (addVoteActivity.j == 5) {
            textView.setText(2131034589);
        } else {
            textView.setText(2131034588);
        }
        h2.d = "\u53d1\u5e03";
        h2.a(2131034583, (DialogInterface.OnClickListener) new L(addVoteActivity, string));
        h2.b(2131034129, (DialogInterface.OnClickListener) new M(addVoteActivity));
        h2.a(view2).b();
    }

    static /* synthetic */ EditText b(AddVoteActivity addVoteActivity) {
        return addVoteActivity.b;
    }

    static /* synthetic */ String c(AddVoteActivity addVoteActivity) {
        return addVoteActivity.e;
    }

    static /* synthetic */ int d(AddVoteActivity addVoteActivity) {
        return addVoteActivity.j;
    }

    static /* synthetic */ String e(AddVoteActivity addVoteActivity) {
        return addVoteActivity.l;
    }

    static /* synthetic */ String f(AddVoteActivity addVoteActivity) {
        return addVoteActivity.f;
    }

    static /* synthetic */ boolean g(AddVoteActivity addVoteActivity) {
        return addVoteActivity.h;
    }

    private boolean f() {
        Editable editable;
        String string = this.a.getText().toString().trim();
        if (this.j != 3) {
            if (com.clilystudio.netbook.hpay100.a.a.Q(string)) {
                e.a((Activity) this, (String) "\t\t\u8bf7\u8f93\u5165\u5e16\u5b50\u6807\u9898\t\t");
                return false;
            }
            if (string.length() < 4) {
                e.a((Activity) this, (String) "\t\t\u6807\u9898\u6587\u5b57\u592a\u5c11\u4e86\u54e6\t\t");
                return false;
            }
        }
        if ((editable = this.b.getText()) == null || com.clilystudio.netbook.hpay100.a.a.Q(editable.toString())) {
            e.a((Activity) this, (String) "\t\t\u8bf7\u8f93\u5165\u6b63\u6587\t\t");
            return false;
        }
        if (this.j == 4 && editable.toString().length() < 300) {
            e.a((Activity) this, (String) "\t\t\u6587\u7ae0\u6b63\u6587\u4e0d\u5c11\u4e8e300\u5b57\t\t");
            return false;
        }
        return true;
    }

    protected String b() {
        return this.k;
    }

    @Override
    protected void onActivityResult(int n, int n2, Intent intent) {
        super.onActivityResult(n, n2, intent);
        if (n == 0 && n2 == -1) {
            this.i = intent.getStringArrayExtra("contentArray");
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onBackPressed() {
        boolean bl = true;
        String string = this.a.getText().toString();
        String string2 = this.b.getText().toString();
        if (com.clilystudio.netbook.hpay100.a.a.Q(string) && com.clilystudio.netbook.hpay100.a.a.Q(string2)) {
            bl = false;
        }
        if (bl) {
            h h2 = new h(this);
            h2.d = "\u63d0\u793a";
            h2.e = "\u79bb\u5f00\u5c06\u4e22\u5931\u5df2\u8f93\u5165\u7684\u5185\u5bb9\uff0c\u786e\u5b9a\u79bb\u5f00\uff1f";
            h2.b("\u7559\u5728\u6b64\u9875", (DialogInterface.OnClickListener) new N(this));
            h2.a("\u79bb\u5f00", (DialogInterface.OnClickListener) new O(this));
            h2.a().show();
            return;
        }
        super.onBackPressed();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onCreate(Bundle bundle) {
        String string;
        super.onCreate(bundle);
        this.setContentView(2130903078);
        com.clilystudio.netbook.a.a();
        com.clilystudio.netbook.a.a(this);
        this.a = (EditText) this.findViewById(2131493072);
        this.b = (EditText) this.findViewById(2131493074);
        this.c = this.findViewById(2131493073);
        this.l = this.getIntent().getStringExtra("add_post_mode");
        if ("ramble".equals(this.l)) {
            this.j = 1;
            this.a.setHint(2131034400);
            this.b.setHint(2131034399);
            this.k = "\u8bdd\u9898";
        } else if ("android-feedback".equals(this.l)) {
            this.j = 2;
            this.a.setHint(2131034402);
            this.b.setHint(2131034401);
            this.k = "\u610f\u89c1\u53cd\u9988";
        } else if ("TWEET".equals(this.l)) {
            this.j = 3;
            this.a.setVisibility(View.GONE);
            this.c.setVisibility(View.GONE);
            this.b.setHint(2131034403);
            this.k = "\u52a8\u6001";
        } else if ("ARTICLE".equals(this.l)) {
            this.j = 4;
            this.a.setHint(2131034400);
            this.b.setHint(2131034398);
            this.k = "\u6587\u7ae0";
        } else if ("girl".equals(this.l)) {
            this.j = 5;
            this.a.setHint(2131034292);
            this.b.setHint(2131034290);
            this.k = "\u5973\u751f\u533a";
        } else {
            this.e = this.getIntent().getStringExtra("book_post_list_bookId");
            this.f = this.getIntent().getStringExtra("book_post_list_bookTitle");
            this.h = this.getIntent().getBooleanExtra("book_post_list_from_reader", false);
            this.j = 0;
        }
        this.g = this.getIntent().getBooleanExtra("add_post_category", false);
        if (this.g) {
            string = "\u4e0b\u4e00\u6b65";
            this.k = "\u6295\u7968";
        } else {
            string = "\u53d1\u5e03";
        }
        this.a("\u7f16\u8f91" + this.b(), string, (aa) new K(this));
    }
}
