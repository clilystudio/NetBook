package com.clilystudio.netbook.ui.user;

import android.app.Activity;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.PayResult;

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

