package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.a_pack.BaseAsyncTask;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.model.RelateBookRoot;

public final class RelateBookManager {
    private cQ a;
    private String[] c = new String[20];

    public RelateBookManager(cQ cQ2) {
        this.a = cQ2;
    }

    public final boolean a(String bookId) {
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
                    RelateBookManager.this.a.a(relateBookRoot, RelateBookManager.this.c);
                }
            }
        }.b(bookId);
        return false;
    }

    public interface cQ {
        void a(RelateBookRoot relateBookRoot, String[] var2);
    }
}
