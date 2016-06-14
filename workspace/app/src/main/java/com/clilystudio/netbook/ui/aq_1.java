package com.clilystudio.netbook.ui;

import android.app.Activity;

import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.BookListRoot;
import com.clilystudio.netbook.model.CategoryBook;
import com.clilystudio.netbook.util.e;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

final class aq
        extends com.clilystudio.netbook.a_pack.e<String, Void, List<CategoryBook>> {
    private boolean a;
    private /* synthetic */ BookCategoryFragment b;

    public aq(BookCategoryFragment bookCategoryFragment) {
        this.b = bookCategoryFragment;
        this.a = true;
        this.a = true;
    }

    public aq(BookCategoryFragment bookCategoryFragment, boolean bl) {
        this.b = bookCategoryFragment;
        this.a = true;
        this.a = false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private /* varargs */ List<CategoryBook> a() {
        try {
            String string = this.b.getArguments().getString("bookcategory_type");
            if (this.b.getActivity() == null) return null;
            if (this.b.getActivity().isFinishing()) {
                return null;
            }
            String string2 = ((BookCategoryListActivity) this.b.getActivity()).f();
            String string3 = ((BookCategoryListActivity) this.b.getActivity()).g();
            String string4 = ((BookCategoryListActivity) this.b.getActivity()).b();
            b.a();
            ApiService apiService = b.b();
            int n = this.a ? BookCategoryFragment.b(this.b).size() : 0;
            BookListRoot bookListRoot = apiService.a(string4, string, string2, string3, n, 50);
            if (bookListRoot == null) return null;
            if (bookListRoot.getBooks() == null) return null;
            return Arrays.asList(bookListRoot.getBooks());
        } catch (IOException var1_9) {
            var1_9.printStackTrace();
        }
        return null;
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] var1_1) {
        return this.a();
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        List list = (List) object;
        super.onPostExecute(list);
        BookCategoryFragment.c(this.b).setVisibility(8);
        BookCategoryFragment.e(this.b).setVisibility(8);
        BookCategoryFragment.f(this.b).setVisibility(8);
        BookCategoryFragment.g(this.b).n();
        boolean bl = BookCategoryFragment.b(this.b).isEmpty();
        if (list != null) {
            int n;
            if (!this.a) {
                BookCategoryFragment.b(this.b).clear();
            }
            if ((n = list.size()) > 0) {
                BookCategoryFragment.b(this.b).addAll(list);
                BookCategoryFragment.h(this.b).a(BookCategoryFragment.b(this.b));
                if (n >= 50) {
                    BookCategoryFragment.g(this.b).setOnLastItemVisibleListener(BookCategoryFragment.i(this.b));
                    return;
                }
            } else if (bl) {
                BookCategoryFragment.c(this.b).setVisibility(0);
                BookCategoryFragment.c(this.b).setText("\u6682\u65f6\u6ca1\u6709\u4e66\u7c4d\u54e6");
                return;
            }
            BookCategoryFragment.g(this.b).setOnLastItemVisibleListener(null);
            return;
        }
        BookCategoryFragment.g(this.b).setOnLastItemVisibleListener(BookCategoryFragment.i(this.b));
        e.a((Activity) this.b.getActivity(), "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5");
    }
}
