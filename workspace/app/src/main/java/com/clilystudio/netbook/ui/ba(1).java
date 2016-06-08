package com.clilystudio.netbook.ui;

import android.app.Activity;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.BookAdd;

final class ba extends c<String, BookAdd> {
    public ba(CustomSearchActivity paramCustomSearchActivity, Activity paramActivity, int paramInt) {
        super(paramActivity, 2131034324);
    }

    private BookAdd a(String[] paramArrayOfString) {
        try {
            BookAdd localBookAdd = b.b().f(paramArrayOfString[0], paramArrayOfString[1], paramArrayOfString[2]);
            return localBookAdd;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

