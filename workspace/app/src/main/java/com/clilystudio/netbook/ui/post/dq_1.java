package com.clilystudio.netbook.ui.post;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;

public final class dq {
    private Context a;
    private String b;
    private String c;
    private boolean d;
    private String e;

    public dq(Context context, String string, String string2, boolean bl, String string3) {
        this.a = context;
        this.b = string;
        this.c = string2;
        this.d = bl;
        this.e = string3;
    }

    static /* synthetic */ void a(dq dq2) {
        Intent intent = new Intent(dq2.a, AddTopicActivity.class);
        intent.putExtra("book_post_list_bookId", dq2.b);
        intent.putExtra("book_post_list_bookTitle", dq2.c);
        intent.putExtra("add_post_mode", dq2.e);
        intent.putExtra("book_post_list_from_reader", dq2.d);
        dq2.a.startActivity(intent);
    }

    static /* synthetic */ void b(dq dq2) {
        Intent intent = new Intent(dq2.a, AddVoteActivity.class);
        intent.putExtra("book_post_list_bookId", dq2.b);
        intent.putExtra("book_post_list_bookTitle", dq2.c);
        intent.putExtra("add_post_category", true);
        intent.putExtra("add_post_mode", dq2.e);
        intent.putExtra("book_post_list_from_reader", dq2.d);
        dq2.a.startActivity(intent);
    }

    public final void a() {
        h h2 = new h(this.a);
        h2.d = "\u53d1\u5e03";
        h2.a(new String[]{"\u8bdd\u9898", "\u6295\u7968"}, (DialogInterface.OnClickListener) new dr(this)).b();
    }
}
