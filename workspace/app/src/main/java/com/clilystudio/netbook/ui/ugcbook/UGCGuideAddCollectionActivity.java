package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.am;
import android.text.Selection;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.Account;
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

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static /* synthetic */ void a(UGCGuideAddCollectionActivity uGCGuideAddCollectionActivity) {
        Account account = am.a((Activity) uGCGuideAddCollectionActivity);
        if (account == null) return;
        if (account.getUser() != null && account.getUser().getLv() < 2) {
            e.a((Activity) uGCGuideAddCollectionActivity, (String) "\u7b49\u7ea7\u4e0d\u591f");
            return;
        }
        String string = uGCGuideAddCollectionActivity.a.getText().toString();
        String string2 = uGCGuideAddCollectionActivity.b.getText().toString();
        if (a.Q(string)) {
            e.a((Activity) uGCGuideAddCollectionActivity, (String) "\u8bf7\u8f93\u5165\u4e66\u5355\u540d");
            return;
        }
        if (a.Q(string2)) {
            e.a((Activity) uGCGuideAddCollectionActivity, (String) "\u8bf7\u8f93\u5165\u4e66\u5355\u4e3b\u9898\u4ecb\u7ecd");
            return;
        }
        Intent intent = new Intent(uGCGuideAddCollectionActivity, UGCGuideEditBooksActivity.class);
        intent.putExtra("name", string.trim());
        intent.putExtra("desc", string2.trim());
        intent.putExtra("desc", string2.trim());
        intent.putExtra("ugc_id", uGCGuideAddCollectionActivity.c);
        intent.putExtra("is_draft", uGCGuideAddCollectionActivity.f);
        intent.putExtra("my_author", uGCGuideAddCollectionActivity.e);
        uGCGuideAddCollectionActivity.startActivity(intent);
    }

    static /* synthetic */ UGCNewCollection b(UGCGuideAddCollectionActivity uGCGuideAddCollectionActivity) {
        return UGCGuideAddCollectionActivity.e();
    }

    static /* synthetic */ TextView c(UGCGuideAddCollectionActivity uGCGuideAddCollectionActivity) {
        return uGCGuideAddCollectionActivity.a;
    }

    static /* synthetic */ TextView d(UGCGuideAddCollectionActivity uGCGuideAddCollectionActivity) {
        return uGCGuideAddCollectionActivity.b;
    }

    static /* synthetic */ String e(UGCGuideAddCollectionActivity uGCGuideAddCollectionActivity) {
        return uGCGuideAddCollectionActivity.c;
    }

    static /* synthetic */ UGCNewCollection f(UGCGuideAddCollectionActivity uGCGuideAddCollectionActivity) {
        return UGCGuideAddCollectionActivity.e();
    }

    static /* synthetic */ UGCNewCollection g(UGCGuideAddCollectionActivity uGCGuideAddCollectionActivity) {
        return UGCGuideAddCollectionActivity.e();
    }

    static /* synthetic */ UGCNewCollection h(UGCGuideAddCollectionActivity uGCGuideAddCollectionActivity) {
        return UGCGuideAddCollectionActivity.e();
    }

    @Override
    public void onBackPressed() {
        boolean bl;
        block4:
        {
            String string = this.a.getText().toString();
            String string2 = this.b.getText().toString();
            if (a.Q(string)) {
                boolean bl2 = a.Q(string2);
                bl = false;
                if (bl2) break block4;
            }
            bl = true;
        }
        if (bl) {
            if (!this.f && this.c != null && !this.c.equals("") || UGCGuideAddCollectionActivity.e().getBooks().size() <= 0) {
                h h2 = new h(this);
                h2.d = "\u63d0\u793a";
                h2.e = "\u79bb\u5f00\u5c06\u4e22\u5931\u5df2\u8f93\u5165\u7684\u5185\u5bb9\uff0c\u786e\u5b9a\u79bb\u5f00\uff1f";
                h2.a("\u79bb\u5f00", (DialogInterface.OnClickListener) new D(this)).b("\u7ee7\u7eed\u7f16\u8f91", null).a().show();
                return;
            }
            h h3 = new h(this);
            h3.d = "\u63d0\u793a";
            h3.e = "\u79bb\u5f00\u5c06\u4e22\u5931\u5df2\u8f93\u5165\u7684\u5185\u5bb9\uff0c\u662f\u5426\u4fdd\u5b58\u4e3a\u8349\u7a3f\uff1f";
            h3.b("\u76f4\u63a5\u79bb\u5f00", (DialogInterface.OnClickListener) new F(this)).a("\u4fdd\u5b58\u5e76\u79bb\u5f00", (DialogInterface.OnClickListener) new E(this)).a().show();
            return;
        }
        this.finish();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903135);
        i.a().a(this);
        this.a = (TextView) this.findViewById(2131493224);
        this.b = (TextView) this.findViewById(2131493225);
        this.c = this.getIntent().getStringExtra("ugc_id");
        this.f = this.getIntent().getBooleanExtra("is_draft", false);
        this.e = (Author) this.getIntent().getSerializableExtra("my_author");
        int n = 2131034562;
        if (this.c != null && !this.c.equals("")) {
            UGCNewCollection uGCNewCollection = MyApplication.a().a;
            if (uGCNewCollection != null) {
                this.a.setText(uGCNewCollection.getTitle());
                this.b.setText(uGCNewCollection.getDesc());
                Selection.setSelection(this.a.getEditableText(), this.a.getText().length());
            }
            n = 2131034563;
        } else {
            MyApplication.a().a = new UGCNewCollection();
        }
        this.a(n, 2131034419, (aa) new C(this));
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        i.a().b(this);
    }

    @l
    public void onUgcDraftEvent(com.clilystudio.netbook.event.E e2) {
        this.finish();
    }
}
