package com.clilystudio.app.netbook.ui.user;

import android.app.Activity;

import com.clilystudio.app.netbook.a_packA.c;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.PayResult;

import java.io.IOException;

final class H extends c<String, PayResult> {
    public H(PayAccountActivity paramPayAccountActivity, Activity paramActivity, String paramString) {
        super(paramActivity, paramString);
    }

    private PayResult a(String[] paramArrayOfString) {
        try {
            PayResult localPayResult = b.b().a(paramArrayOfString[0], PayAccountActivity.a(this.a));
            return localPayResult;
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.H
 * JD-Core Version:    0.6.2
 */