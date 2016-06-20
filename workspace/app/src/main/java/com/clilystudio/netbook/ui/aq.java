package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.view.View;

import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.BookListRoot;
import com.clilystudio.netbook.model.CategoryBook;
import com.clilystudio.netbook.util.e;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

final class aq extends com.clilystudio.netbook.a_pack.e<String, Void, List<CategoryBook>> {
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
    protected final /* synthetic */ List<CategoryBook> doInBackground(String[] var1_1) {
        return this.a();
    }

    @Override
    protected final /* synthetic */ void onPostExecute(List<CategoryBook> object) {
        List list = (List) object;
        super.onPostExecute(list);
        BookCategoryFragment.c(this.b).setVisibility(View.GONE);
        BookCategoryFragment.e(this.b).setVisibility(View.GONE);
        BookCategoryFragment.f(this.b).setVisibility(View.GONE);
        BookCategoryFragment.g(this.b).postInvalidate();
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
                BookCategoryFragment.c(this.b).setVisibility(View.VISIBLE);
                BookCategoryFragment.c(this.b).setText("暂时没有书籍哦");
                return;
            }
            BookCategoryFragment.g(this.b).setOnLastItemVisibleListener(null);
            return;
        }
        BookCategoryFragment.g(this.b).setOnLastItemVisibleListener(BookCategoryFragment.i(this.b));
        e.a((Activity) this.b.getActivity(), "加载失败，请检查网络或稍后再试");
    }
}
