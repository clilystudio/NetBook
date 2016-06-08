package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.CategoryLevelRoot;

final class ak extends e<String, Void, CategoryLevelRoot> {
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

