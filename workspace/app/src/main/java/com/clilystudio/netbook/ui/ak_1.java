package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.CategoryLevelRoot;

final class ak
        extends e<String, Void, CategoryLevelRoot> {
    private /* synthetic */ BookCategoryActivity a;

    private ak(BookCategoryActivity bookCategoryActivity) {
        this.a = bookCategoryActivity;
    }

    /* synthetic */ ak(BookCategoryActivity bookCategoryActivity, byte by) {
        this(bookCategoryActivity);
    }

    private /* varargs */ CategoryLevelRoot a() {
        try {
            CategoryLevelRoot categoryLevelRoot = b.b().f();
            return categoryLevelRoot;
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
        CategoryLevelRoot categoryLevelRoot = (CategoryLevelRoot) object;
        super.onPostExecute(categoryLevelRoot);
        if (categoryLevelRoot != null && categoryLevelRoot.isOk()) {
            BookCategoryActivity.a(this.a, categoryLevelRoot);
        }
    }
}
