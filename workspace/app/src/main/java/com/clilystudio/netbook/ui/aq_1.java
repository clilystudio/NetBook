package com.clilystudio.netbook.ui;

import android.app.Activity;

import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.BookListRoot;

import java.io.IOException;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

final class aq extends com.clilystudio.netbook.a.e {

    private boolean a;
    private BookCategoryFragment b;
    public aq(BookCategoryFragment BookCategoryFragment1, boolean boolean2) {
        b = BookCategoryFragment1;
        a = true;
        a = false;
    }

    public aq(BookCategoryFragment BookCategoryFragment1) {
        b = BookCategoryFragment1;
        a = true;
        a = true;
    }

    private transient List a() {
        String String2;
        int int8;

        label_16:
        {
            try {
                String2 = b.getArguments().getString("bookcategory_type");
                if (b.getActivity() != null && !b.getActivity().isFinishing())
                    break label_16;
            } catch (IOException IOException1) {
                IOException1.printStackTrace();
            }
            return null;
        }
        label_66:
        {
            BookListRoot BookListRoot9;

            try {
                String String3 = ((BookCategoryListActivity) b.getActivity()).f();
                String String4 = ((BookCategoryListActivity) b.getActivity()).g();
                String String5 = ((BookCategoryListActivity) b.getActivity()).b();
                ApiService ApiService7;

                com.clilystudio.netbook.api.b.a();
                ApiService7 = com.clilystudio.netbook.api.b.b();
                if (!a)
                    break label_66;
                int8 = BookCategoryFragment.b(b).size();
                BookListRoot9 = ApiService7.a(String5, String2, String3, String4, int8, 50);
            } catch (IOException IOException11) {
                IOException11.printStackTrace();
            }
            if (BookListRoot9 != null && BookListRoot9.getBooks() != null) {
                List List10 = Arrays.asList(BookListRoot9.getBooks());

                return List10;
            }
        }
        int8 = 0;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a();
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (List) Object1;
        boolean boolean3;

        super.onPostExecute(Object2);
        BookCategoryFragment.c(b).setVisibility(8);
        BookCategoryFragment.e(b).setVisibility(8);
        BookCategoryFragment.f(b).setVisibility(8);
        BookCategoryFragment.g(b).n();
        boolean3 = BookCategoryFragment.b(b).isEmpty();
        if (Object2 != null) {
            int int4;

            if (!a)
                BookCategoryFragment.b(b).clear();
            int4 = ((List) Object2).size();
            if (int4 > 0) {
                BookCategoryFragment.b(b).addAll((Collection) Object2);
                BookCategoryFragment.h(b).a((Collection) BookCategoryFragment.b(b));
                if (int4 >= 50) {
                    BookCategoryFragment.g(b).setOnLastItemVisibleListener(BookCategoryFragment.i(b));
                    return;
                }
            } else if (boolean3) {
                BookCategoryFragment.c(b).setVisibility(0);
                BookCategoryFragment.c(b).setText((CharSequence) "\u6682\u65F6\u6CA1\u6709\u4E66\u7C4D\u54E6");
                return;
            }
            BookCategoryFragment.g(b).setOnLastItemVisibleListener(null);
        } else {
            BookCategoryFragment.g(b).setOnLastItemVisibleListener(BookCategoryFragment.i(b));
            com.clilystudio.netbook.util.e.a((Activity) b.getActivity(), "\u52A0\u8F7D\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u7A0D\u540E\u518D\u8BD5");
        }
    }
}
