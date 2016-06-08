package com.clilystudio.netbook.ui;

public class BookRankDetailActivity extends BookListActivity {
    protected final void b() {
        e(0);
        aL localaL = new aL(this, 0);
        String[] arrayOfString = new String[1];
        arrayOfString[0] = getIntent().getStringExtra("book_list_id");
        localaL.b(arrayOfString);
    }
}

