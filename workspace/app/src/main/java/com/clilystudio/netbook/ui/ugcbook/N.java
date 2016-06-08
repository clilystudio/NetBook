package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.BookSummary;

import java.io.IOException;
import java.util.List;

final class N extends c<String[], List<BookSummary>> {
    public N(UGCGuideEditBooksActivity paramUGCGuideEditBooksActivity, Activity paramActivity) {
        super(paramActivity, "正在添加书籍...");
    }

    private List<BookSummary> a(String[][] paramArrayOfString) {
        String[] arrayOfString = paramArrayOfString[0];
        try {
            List localList = b.b().a(arrayOfString);
            return localList;
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }
}

