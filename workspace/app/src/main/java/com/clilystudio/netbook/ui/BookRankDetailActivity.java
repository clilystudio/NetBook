package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.BaseAsyncTask;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.model.BookRankDetailRoot;
import com.clilystudio.netbook.util.ToastUtil;

public class BookRankDetailActivity extends BookListActivity {
    @Override
    protected final void b() {
        this.e(0);
        new BaseAsyncTask<String, Void, BookRankDetailRoot>() {

            @Override
            protected BookRankDetailRoot doInBackground(String... params) {
                return ApiServiceProvider.getApiService().getBookRankDetailRoot(params[0]);
            }

            @Override
            protected void onPostExecute(BookRankDetailRoot bookRankDetailRoot) {
                super.onPostExecute(bookRankDetailRoot);
                if (bookRankDetailRoot != null && bookRankDetailRoot.getRanking() != null) {
                    BookRankDetailActivity.this.e(1);
                    BookRankDetailActivity.this.a.setDatas(bookRankDetailRoot.getRanking().getBooks());
                    return;
                }
                BookRankDetailActivity.this.e(2);
                ToastUtil.showToast(BookRankDetailActivity.this, R.string.load_failed_tips);
            }
        }.b(this.getIntent().getStringExtra("book_list_id"));
    }
}
