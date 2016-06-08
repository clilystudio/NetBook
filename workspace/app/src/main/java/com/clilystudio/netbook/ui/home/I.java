package com.clilystudio.netbook.ui.home;

import android.app.Activity;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.model.BookGenderRecommend;
import com.clilystudio.netbook.model.BookGenderRecommend.RecommendBook;

import java.io.IOException;

final class I extends c<String, BookGenderRecommend> {
    public I(HomeShelfFragment paramHomeShelfFragment, Activity paramActivity) {
        super(paramActivity, paramActivity.getString(2131034464));
    }

    private static BookGenderRecommend a(String[] paramArrayOfString) {
        int i = 0;
        BookGenderRecommend localBookGenderRecommend;
        try {
            b.a();
            localBookGenderRecommend = b.b().ac(paramArrayOfString[0]);
            if (localBookGenderRecommend.isOk()) {
                BookGenderRecommend.RecommendBook[] arrayOfRecommendBook = localBookGenderRecommend.getBooks();
                int j = arrayOfRecommendBook.length;
                while (i < j) {
                    BookGenderRecommend.RecommendBook localRecommendBook = arrayOfRecommendBook[i];
                    BookReadRecord.create(localRecommendBook);
                    a.u(localRecommendBook.get_id());
                    i++;
                }
            }
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
            localBookGenderRecommend = null;
        }
        return localBookGenderRecommend;
    }
}

