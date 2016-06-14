package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.SecretAppItemRoot;

import java.io.IOException;
import java.util.Arrays;

final class bp extends e<String, Void, SecretAppItemRoot> {
    private /* synthetic */ MysteryActivity a;

    private bp(MysteryActivity mysteryActivity) {
        this.a = mysteryActivity;
    }

    /* synthetic */ bp(MysteryActivity mysteryActivity, byte by) {
        this(mysteryActivity);
    }

    private /* varargs */ SecretAppItemRoot a() {
        MysteryActivity.a(this.a, true);
        try {
            SecretAppItemRoot secretAppItemRoot = b.b().n();
            return secretAppItemRoot;
        } catch (IOException var2_2) {
            var2_2.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] var1_1) {
        return this.a();
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        SecretAppItemRoot secretAppItemRoot = (SecretAppItemRoot) object;
        super.onPostExecute(secretAppItemRoot);
        MysteryActivity.b(this.a, true);
        MysteryActivity.a(this.a, false);
        if (secretAppItemRoot != null && secretAppItemRoot.getApps() != null) {
            MysteryActivity.a(this.a, Arrays.asList(secretAppItemRoot.getApps()));
            MysteryActivity.a(this.a);
            return;
        }
        this.a.h();
    }

    @Override
    protected final void onPreExecute() {
        super.onPreExecute();
        this.a.i();
    }
}
