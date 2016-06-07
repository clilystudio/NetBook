package com.clilystudio.app.netbook.ui;

import com.clilystudio.app.netbook.a_packA.e_BaseAsyncTask;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.CategoryRoot;

final class al extends e_BaseAsyncTask<String, Void, CategoryRoot> {
    private al(BookCategoryActivity paramBookCategoryActivity) {
    }

    private CategoryRoot a() {
        try {
            CategoryRoot localCategoryRoot = b.b().e();
            return localCategoryRoot;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.al
 * JD-Core Version:    0.6.2
 */