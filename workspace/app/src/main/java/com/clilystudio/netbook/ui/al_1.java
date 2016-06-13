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
