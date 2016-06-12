package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.a.c;
import com.clilystudio.netbook.model.BookAdd;
import com.clilystudio.netbook.util.e;

final class ba extends c {

    private CustomSearchActivity a;

    public ba(CustomSearchActivity CustomSearchActivity1, Activity Activity2, int int3) {
        super(Activity2, 2131034324);
        a = CustomSearchActivity1;
    }

    private transient BookAdd a(String[] String_1darray1) {
        BookAdd BookAdd3;

        try {
            BookAdd3 = com.clilystudio.netbook.api.b.b().f(String_1darray1[0], String_1darray1[1], String_1darray1[2]);
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return null;
        }
        return BookAdd3;
    }

    public final volatile Object a(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    public final void a(Object Object1) {
        BookAdd BookAdd2 = (BookAdd) Object1;

        if (BookAdd2 != null) {
            if (BookAdd2.isOk()) {
                String String3 = BookAdd2.getBook();
                Intent Intent4 = BookInfoActivity.a((Context) a, String3);

                a.startActivity(Intent4);
            } else if ("EXISTS".equals(BookAdd2.getCode())) {
                e.a((Activity) a, "\u8BE5\u4E66\u5DF2\u5B58\u5728");
                return;
            } else if ("NOTFOUND".equals(BookAdd2.getCode())) {
                CustomSearchActivity.b(a);
                return;
            }
        } else
            e.a((Activity) a, "\u641C\u7D22\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u7A0D\u540E\u518D\u8BD5");
    }
}
