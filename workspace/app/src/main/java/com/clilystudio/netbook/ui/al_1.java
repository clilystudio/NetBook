package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.CategoryRoot;

final class al
        extends e<String, Void, CategoryRoot> {
    private /* synthetic */ BookCategoryActivity a;

    private al(BookCategoryActivity bookCategoryActivity) {
        this.a = bookCategoryActivity;
    }

    /* synthetic */ al(BookCategoryActivity bookCategoryActivity, byte by) {
        this(bookCategoryActivity);
    }

    private /* varargs */ CategoryRoot a() {
        try {
            CategoryRoot categoryRoot = b.b().e();
            return categoryRoot;
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] var1_1) {
        return this.a();
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        CategoryRoot categoryRoot = (CategoryRoot) object;
        super.onPostExecute(categoryRoot);
        if (categoryRoot != null && categoryRoot.isOk()) {
            BookCategoryActivity.a(this.a, 1);
            BookCategoryActivity.a(this.a, categoryRoot);
            return;
        }
        BookCategoryActivity.a(this.a, 2);
    }
}
