package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.a.e;
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

    /*
     * Exception decompiling
     */
    @Override
    protected final /* synthetic */ Object doInBackground(Object[] var1_1) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // java.lang.ArrayIndexOutOfBoundsException
        throw new IllegalStateException("Decompilation failed");
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
