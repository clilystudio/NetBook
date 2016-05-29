package com.clilystudio.app.netbook.ui;

public class BookRankDetailActivity extends BookListActivity {
    protected final void b() {
        e(0);
        aL localaL = new aL(this, (byte) 0);
        String[] arrayOfString = new String[1];
        arrayOfString[0] = getIntent().getStringExtra("book_list_id");
        localaL.b(arrayOfString);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.BookRankDetailActivity
 * JD-Core Version:    0.6.2
 */