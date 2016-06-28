package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;
import android.text.Selection;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.aa;

import uk.me.lewisdeane.ldialogs.BaseDialog;

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
                BaseDialog.Builder h2 = new BaseDialog.Builder(this);
                h2.setTitle("提示");
                h2.setMessage("离开将丢失已输入的内容，确定离开？");
                h2.setPositiveButton("离开", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        finish();
                    }
                }).setNegativeButton("继续编辑", null).create().show();
                return;
            }
            BaseDialog.Builder h3 = new BaseDialog.Builder(this);
            h3.setTitle("提示");
            h3.setMessage("离开将丢失已输入的内容，是否保存为草稿？");
            h3.setPositiveButton("直接离开", new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    finish();
                }
            }).setNegativeButton("保存并离开", new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    new G(UGCGuideAddCollectionActivity.this).b();
                }
            }).create().show();
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
        this.setContentView(R.layout.activity_ucg_guide_add_collection);
        i.a().register(this);
        this.a = (TextView) this.findViewById(R.id.name_field);
        this.b = (TextView) this.findViewById(R.id.desc_field);
        this.c = this.getIntent().getStringExtra("ugc_id");
        this.f = this.getIntent().getBooleanExtra("is_draft", false);
        this.e = (Author) this.getIntent().getSerializableExtra("my_author");
        int n = R.string.ugc_create;
        if (this.c != null && !this.c.equals("")) {
            UGCNewCollection uGCNewCollection = MyApplication.a().a;
            if (uGCNewCollection != null) {
                this.a.setText(uGCNewCollection.getTitle());
                this.b.setText(uGCNewCollection.getDesc());
                Selection.setSelection(this.a.getEditableText(), this.a.getText().length());
            }
            n = R.string.ugc_edit;
        } else {
            MyApplication.a().a = new UGCNewCollection();
        }
        this.a(n, R.string.next, new aa() {
            @Override
            public void a() {
                UGCGuideAddCollectionActivity.a(UGCGuideAddCollectionActivity.this);
            }
        });
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        i.a().unregister(this);
    }

    @l
    public void onUgcDraftEvent(com.clilystudio.netbook.event.E e2) {
        this.finish();
    }
}
