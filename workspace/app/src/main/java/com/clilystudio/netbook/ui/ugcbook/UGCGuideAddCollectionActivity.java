package com.clilystudio.netbook.ui.ugcbook;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.Selection;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.BaseLoadingTask;
import com.clilystudio.netbook.util.am;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.event.UgcDraftEvent;
import com.clilystudio.netbook.event.UpdateUgcListEvent;
import com.clilystudio.netbook.event.BusProvider;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.ResultStatus;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.BaseCallBack;
import com.clilystudio.netbook.util.ToastUtil;
import com.squareup.otto.Subscribe;

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
        Account account = am.a(uGCGuideAddCollectionActivity);
        if (account == null) return;
        if (account.getUser() != null && account.getUser().getLv() < 2) {
            ToastUtil.showShortToast(uGCGuideAddCollectionActivity, "等级不够");
            return;
        }
        String string = uGCGuideAddCollectionActivity.a.getText().toString();
        String string2 = uGCGuideAddCollectionActivity.b.getText().toString();
        if (com.clilystudio.netbook.util.a.Q(string)) {
            ToastUtil.showShortToast(uGCGuideAddCollectionActivity, "请输入书单名");
            return;
        }
        if (com.clilystudio.netbook.util.a.Q(string2)) {
            ToastUtil.showShortToast(uGCGuideAddCollectionActivity, "请输入书单主题介绍");
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

    static /* synthetic */ TextView c(UGCGuideAddCollectionActivity uGCGuideAddCollectionActivity) {
        return uGCGuideAddCollectionActivity.a;
    }

    static /* synthetic */ TextView d(UGCGuideAddCollectionActivity uGCGuideAddCollectionActivity) {
        return uGCGuideAddCollectionActivity.b;
    }

    static /* synthetic */ String e(UGCGuideAddCollectionActivity uGCGuideAddCollectionActivity) {
        return uGCGuideAddCollectionActivity.c;
    }

    @Override
    public void onBackPressed() {
        boolean bl;
        block4:
        {
            String string = this.a.getText().toString();
            String string2 = this.b.getText().toString();
            if (com.clilystudio.netbook.util.a.Q(string)) {
                boolean bl2 = com.clilystudio.netbook.util.a.Q(string2);
                bl = false;
                if (bl2) break block4;
            }
            bl = true;
        }
        if (bl) {
            if (!this.f && this.c != null && !this.c.equals("") || MyApplication.getInstance().getUGCNewCollection().getBooks().size() <= 0) {
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
                    UGCNewCollection uGCNewCollection = MyApplication.getInstance().getUGCNewCollection();
                    uGCNewCollection.setTitle(UGCGuideAddCollectionActivity.c(UGCGuideAddCollectionActivity.this).getText().toString());
                    uGCNewCollection.setDesc(UGCGuideAddCollectionActivity.d(UGCGuideAddCollectionActivity.this).getText().toString());

                    new BaseLoadingTask<Void, ResultStatus>(UGCGuideAddCollectionActivity.this, "正在保存到草稿箱...") {

                        @Override
                        public ResultStatus a(Void... var1) {
                            Account account = am.a(UGCGuideAddCollectionActivity.this);
                            if (account == null) return null;
                            if (UGCGuideAddCollectionActivity.this.c == null)
                                return ApiServiceProvider.getApiService().b(MyApplication.getInstance().getUGCNewCollection(), account.getToken());
                            if (UGCGuideAddCollectionActivity.this.c.equals(""))
                                return ApiServiceProvider.getApiService().b(MyApplication.getInstance().getUGCNewCollection(), account.getToken());
                            return ApiServiceProvider.getApiService().b(MyApplication.getInstance().getUGCNewCollection(), account.getToken(), UGCGuideAddCollectionActivity.this.c);
                        }

                        @Override
                        public void a(ResultStatus resultStatus) {
                            if (resultStatus == null || !resultStatus.isOk()) {
                                ToastUtil.showShortToast(UGCGuideAddCollectionActivity.this, "保存失败，请检查网络或重试");
                                return;
                            }
                            ToastUtil.showShortToast(UGCGuideAddCollectionActivity.this, "已保存到草稿箱");
                            UGCNewCollection uGCNewCollection = MyApplication.getInstance().getUGCNewCollection();
                            BusProvider.getInstance().post(new UgcDraftEvent());
                            BusProvider.getInstance().post(new UpdateUgcListEvent(UGCGuideAddCollectionActivity.this.c, uGCNewCollection.getTitle(), uGCNewCollection.getDesc(), uGCNewCollection.getBooks().size(), uGCNewCollection.getBooks().get(0).getCover()));
                            UGCGuideAddCollectionActivity.this.finish();
                        }
                    }.b();
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
        BusProvider.getInstance().register(this);
        this.a = (TextView) this.findViewById(R.id.name_field);
        this.b = (TextView) this.findViewById(R.id.desc_field);
        this.c = this.getIntent().getStringExtra("ugc_id");
        this.f = this.getIntent().getBooleanExtra("is_draft", false);
        this.e = (Author) this.getIntent().getSerializableExtra("my_author");
        int n = R.string.ugc_create;
        if (this.c != null && !this.c.equals("")) {
            UGCNewCollection uGCNewCollection = MyApplication.getInstance().mUGCNewCollection;
            if (uGCNewCollection != null) {
                this.a.setText(uGCNewCollection.getTitle());
                this.b.setText(uGCNewCollection.getDesc());
                Selection.setSelection(this.a.getEditableText(), this.a.getText().length());
            }
            n = R.string.ugc_edit;
        } else {
            MyApplication.getInstance().mUGCNewCollection = new UGCNewCollection();
        }
        this.a(n, R.string.next, new BaseCallBack() {
            @Override
            public void a() {
                UGCGuideAddCollectionActivity.a(UGCGuideAddCollectionActivity.this);
            }
        });
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        BusProvider.getInstance().unregister(this);
    }

    @Subscribe
    public void onUgcDraftEvent(UgcDraftEvent e2) {
        this.finish();
    }
}
