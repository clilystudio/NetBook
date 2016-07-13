package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.widget.EditText;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.BaseLoadingTask;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.model.BookAdd;
import com.clilystudio.netbook.util.ToastUtil;

public class CustomSearchActivity extends BaseActivity {
    private EditText a;
    private EditText b;

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void a(final CustomSearchActivity customSearchActivity) {
        String string = customSearchActivity.a.getText().toString();
        String string2 = customSearchActivity.b.getText().toString();
        if (com.clilystudio.netbook.hpay100.a.a.Q(string)) {
            ToastUtil.showShortToast(customSearchActivity, "书名不能为空");
            return;
        }
        if (com.clilystudio.netbook.hpay100.a.a.Q(string2)) {
            ToastUtil.showShortToast(customSearchActivity, "作者不能为空");
            return;
        }
        boolean bl = true;
        if (bl) {
            String string3 = Build.BRAND + " " + Build.MODEL;
            BaseLoadingTask<String, BookAdd> ba2 = new BaseLoadingTask<String, BookAdd>((Activity) customSearchActivity, R.string.book_add_loading) {

                @Override
                public BookAdd a(String... var1) {
                    return ApiServiceProvider.getApiService().f(var1[0], var1[1], var1[2]);
                }

                @Override
                public void a(BookAdd bookAdd) {
                    if (bookAdd == null) {
                        ToastUtil.showShortToast(customSearchActivity, "搜索失败，请检查网络或稍后再试");
                    } else if (bookAdd.isOk()) {
                        String string = bookAdd.getBook();
                        Intent intent = BookInfoActivity.a(customSearchActivity, string);
                        customSearchActivity.startActivity(intent);
                    } else {
                        if ("EXISTS".equals(bookAdd.getCode())) {
                            ToastUtil.showShortToast(customSearchActivity, "该书已存在");
                        } else if ("NOTFOUND".equals(bookAdd.getCode())) {
                            CustomSearchActivity.b(customSearchActivity);
                        }
                    }
                }
            };
            String[] arrobject = new String[]{customSearchActivity.a.getText().toString().trim(), customSearchActivity.b.getText().toString().trim(), string3};
            ba2.b(arrobject);
        }
    }

    static /* synthetic */ void b(CustomSearchActivity customSearchActivity) {
        customSearchActivity.startActivity(AddBookFailedActivity.a(customSearchActivity, customSearchActivity.a.getText().toString()));
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_custom_search);
        this.a(R.string.add_book_title, R.string.add_book_create, new BaseCallBack() {
            @Override
            public void a() {
                CustomSearchActivity.a(CustomSearchActivity.this);
            }
        });
        this.a = (EditText) this.findViewById(R.id.add_book_name);
        this.b = (EditText) this.findViewById(R.id.add_book_author);
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
