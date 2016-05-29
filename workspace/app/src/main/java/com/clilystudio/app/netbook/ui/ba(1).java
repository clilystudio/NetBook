package com.clilystudio.app.netbook.ui;

import android.app.Activity;

import com.clilystudio.app.netbook.a_packA.c;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.BookAdd;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ba
 * JD-Core Version:    0.6.2
 */