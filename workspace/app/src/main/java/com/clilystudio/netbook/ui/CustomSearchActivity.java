package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.widget.EditText;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.model.BookAdd;
import com.clilystudio.netbook.util.e;

public class CustomSearchActivity extends BaseActivity {
    private EditText a;
    private EditText b;

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void a(final CustomSearchActivity customSearchActivity) {
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
            c<String, BookAdd> ba2 = new c<String, BookAdd>((Activity) customSearchActivity, R.string.book_add_loading) {

                @Override
                public BookAdd a(String... var1) {
                    return com.clilystudio.netbook.api.b.b().f(var1[0], var1[1], var1[2]);
                }

                @Override
                public void a(BookAdd bookAdd) {
                    if (bookAdd == null) {
                        e.a((Activity) customSearchActivity, "搜索失败，请检查网络或稍后再试");
                        return;
                    }
                    if (bookAdd.isOk()) {
                        String string = bookAdd.getBook();
                        Intent intent = BookInfoActivity.a(customSearchActivity, string);
                        customSearchActivity.startActivity(intent);
                        return;
                    } else {
                        if ("EXISTS".equals(bookAdd.getCode())) {
                            e.a((Activity) customSearchActivity, "该书已存在");
                            return;
                        }
                        if (!"NOTFOUND".equals(bookAdd.getCode())) return;
                        {
                            CustomSearchActivity.b(customSearchActivity);
                            return;
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
        this.a(R.string.add_book_title, R.string.add_book_create, new aa() {
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
