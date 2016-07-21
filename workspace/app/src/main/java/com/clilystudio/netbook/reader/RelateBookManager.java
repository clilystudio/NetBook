package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.a_pack.BaseAsyncTask;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.model.RelateBookRoot;

public final class RelateBookManager {
    private OnCompletedListener mListener;

    public RelateBookManager(OnCompletedListener listener) {
        this.mListener = listener;
    }

    public final void getRelateBook(String bookId) {
        new BaseAsyncTask<String, Void, RelateBookRoot>() {

            @Override
            protected RelateBookRoot doInBackground(String... params) {
                ApiServiceProvider.getInstance();
                return ApiServiceProvider.getApiService().getRelateBookRoot(params[0]);
            }

            @Override
            protected void onPostExecute(RelateBookRoot relateBookRoot) {
                super.onPostExecute(relateBookRoot);
                if (relateBookRoot != null && relateBookRoot.isOk()) {
                    mListener.onCompleted(relateBookRoot);
                }
            }
        }.b(bookId);
    }

    public interface OnCompletedListener {
        void onCompleted(RelateBookRoot relateBookRoot);
    }
}
