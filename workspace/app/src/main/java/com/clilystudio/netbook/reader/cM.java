package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.a_pack.BaseAsyncTask;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.model.RelateBookRoot;

public final class cM {
    private cQ a;
    private String[] c = new String[20];

    public cM(cQ cQ2) {
        this.a = cQ2;
    }

    static /* synthetic */ String[] a(cM cM2) {
        return cM2.c;
    }

    static /* synthetic */ cQ b(cM cM2) {
        return cM2.a;
    }

    public final boolean a(String string) {
        new BaseAsyncTask<String, Void, RelateBookRoot>() {

            @Override
            protected RelateBookRoot doInBackground(String... params) {
                ApiServiceProvider.getInstance();
                return ApiServiceProvider.getApiService().X(params[0]);
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

    public interface cQ {
        void a(RelateBookRoot var1, String[] var2);
    }
}
