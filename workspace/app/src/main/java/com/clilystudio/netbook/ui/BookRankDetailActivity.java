package com.clilystudio.netbook.ui;

public class BookRankDetailActivity extends BookListActivity {
    @Override
    protected final void b() {
        this.e(0);
        aL aL2 = new aL(this, 0);
        String[] arrstring = new String[]{this.getIntent().getStringExtra("book_list_id")};
        aL2.b(arrstring);
    }
}
