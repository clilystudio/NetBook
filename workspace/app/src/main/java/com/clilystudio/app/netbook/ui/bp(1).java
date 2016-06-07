package com.clilystudio.app.netbook.ui;

import com.clilystudio.app.netbook.a_packA.e_BaseAsyncTask;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.SecretAppItemRoot;

import java.io.IOException;

final class bp extends e_BaseAsyncTask<String, Void, SecretAppItemRoot> {
    private bp(MysteryActivity paramMysteryActivity) {
    }

    private SecretAppItemRoot a() {
        MysteryActivity.a(this.a, true);
        try {
            SecretAppItemRoot localSecretAppItemRoot = b.b().n();
            return localSecretAppItemRoot;
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }

    protected final void onPreExecute() {
        super.onPreExecute();
        this.a.i();
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.bp
 * JD-Core Version:    0.6.2
 */