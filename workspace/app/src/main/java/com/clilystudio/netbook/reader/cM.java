package com.clilystudio.netbook.reader;

import android.content.Context;

import com.clilystudio.netbook.model.RelateBookRoot;

public final class cM {
    private cQ a;
    private Context b;
    private String[] c = new String[20];

    public cM(Context context, cQ cQ2) {
        this.a = cQ2;
        this.b = context;
    }

    static /* synthetic */ String[] a(cM cM2) {
        return cM2.c;
    }

    static /* synthetic */ cQ b(cM cM2) {
        return cM2.a;
    }

    public final boolean a(String string) {
        new com.clilystudio.netbook.a_pack.e<String, Void, RelateBookRoot>() {

            @Override
            protected RelateBookRoot doInBackground(String... params) {
                com.clilystudio.netbook.api.b.a();
                return com.clilystudio.netbook.api.b.b().X(params[0]);
            }

            @Override
            protected void onPostExecute(RelateBookRoot relateBookRoot) {
                super.onPostExecute(relateBookRoot);
                if (relateBookRoot != null && relateBookRoot.isOk()) {
                    cM.b(cM.this).a(relateBookRoot, cM.a(cM.this));
                } else {
                    cM.b(cM.this).a(relateBookRoot, cM.a(cM.this));
                }
            }
        }.b(string);
        return false;
    }
}
