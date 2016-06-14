package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.Intent;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.BookAdd;
import com.clilystudio.netbook.util.e;

final class ba
        extends c<String, BookAdd> {
    private /* synthetic */ CustomSearchActivity a;

    public ba(CustomSearchActivity customSearchActivity, Activity activity, int n) {
        this.a = customSearchActivity;
        super(activity, 2131034324);
    }

    private /* varargs */ BookAdd a(String... arrstring) {
        try {
            BookAdd bookAdd = b.b().f(arrstring[0], arrstring[1], arrstring[2]);
            return bookAdd;
        } catch (Exception var2_3) {
            var2_3.printStackTrace();
            return null;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final /* synthetic */ void a(Object object) {
        BookAdd bookAdd = (BookAdd) object;
        if (bookAdd == null) {
            e.a((Activity) this.a, "\u641c\u7d22\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5");
            return;
        }
        if (bookAdd.isOk()) {
            String string = bookAdd.getBook();
            Intent intent = BookInfoActivity.a(this.a, string);
            this.a.startActivity(intent);
            return;
        } else {
            if ("EXISTS".equals(bookAdd.getCode())) {
                e.a((Activity) this.a, "\u8be5\u4e66\u5df2\u5b58\u5728");
                return;
            }
            if (!"NOTFOUND".equals(bookAdd.getCode())) return;
            {
                CustomSearchActivity.b(this.a);
                return;
            }
        }
    }
}
