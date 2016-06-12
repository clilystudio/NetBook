package com.clilystudio.netbook.ui;

public class BookRankDetailActivity extends BookListActivity {

    protected final void b() {
        aL aL1;
        String[] String_1darray2;

        e(0);
        aL1 = new aL(this, (byte) 0);
        String_1darray2 = new String[1];
        String_1darray2[0] = getIntent().getStringExtra("book_list_id");
        aL1.b(String_1darray2);
    }
}
