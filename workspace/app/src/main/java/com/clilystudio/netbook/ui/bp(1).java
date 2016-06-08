package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.SecretAppItemRoot;

import java.io.IOException;

final class bp extends e<String, Void, SecretAppItemRoot> {
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

