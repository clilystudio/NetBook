package com.clilystudio.app.netbook.ui;

import com.clilystudio.app.netbook.a_packA.e_BaseAsyncTask;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.CategoryLevelRoot;

final class ak extends e_BaseAsyncTask<String, Void, CategoryLevelRoot> {
    private ak(BookCategoryActivity paramBookCategoryActivity) {
    }

    private CategoryLevelRoot a() {
        try {
            CategoryLevelRoot localCategoryLevelRoot = b.b().f();
            return localCategoryLevelRoot;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ak
 * JD-Core Version:    0.6.2
 */