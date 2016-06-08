package com.clilystudio.netbook.a_pack;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.TocSourceRoot;

public abstract class a extends c<String, TocSourceRoot> {
    public a(Activity paramActivity, boolean paramBoolean) {
        super(paramActivity, 2131034218, paramBoolean);
    }

    private static TocSourceRoot a(String[] paramArrayOfString) {
        try {
            b.a();
            TocSourceRoot localTocSourceRoot = b.b().g(paramArrayOfString[0]);
            return localTocSourceRoot;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }

    protected void a() {
    }

    protected abstract void a(TocSourceRoot paramTocSourceRoot);
}

