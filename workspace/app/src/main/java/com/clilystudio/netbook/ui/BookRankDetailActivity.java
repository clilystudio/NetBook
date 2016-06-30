package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.model.BookRankDetailRoot;

public class BookRankDetailActivity extends BookListActivity {
    @Override
    protected final void b() {
        this.e(0);
        com.clilystudio.netbook.a_pack.e<String, Void, BookRankDetailRoot> aL2 = new com.clilystudio.netbook.a_pack.e<String, Void, BookRankDetailRoot>() {

            @Override
            protected BookRankDetailRoot doInBackground(String... params) {
                return com.clilystudio.netbook.api.b.b().z(params[0]);
            }

            @Override
            protected void onPostExecute(BookRankDetailRoot bookRankDetailRoot) {
                super.onPostExecute(bookRankDetailRoot);
                if (bookRankDetailRoot != null && bookRankDetailRoot.getRanking() != null) {
                    BookRankDetailActivity.this.e(1);
                    BookRankDetailActivity.this.a.a(bookRankDetailRoot.getRanking().getBooks());
                    return;
                }
                BookRankDetailActivity.this.e(2);
                com.clilystudio.netbook.util.e.a(BookRankDetailActivity.this, R.string.load_failed_tips);
            }
        };
        String[] arrstring = new String[]{this.getIntent().getStringExtra("book_list_id")};
        aL2.b(arrstring);
    }
}
