package com.clilystudio.netbook.ui.post;

import android.content.Intent;
import android.view.View;

final class J implements View.OnClickListener {
    private /* synthetic */ AddTopicCategoryActivity a;

    J(AddTopicCategoryActivity addTopicCategoryActivity) {
        this.a = addTopicCategoryActivity;
    }

    @Override
    public final void onClick(View view) {
        Intent intent = new Intent(this.a, AddVoteActivity.class);
        intent.putExtra("book_post_list_bookId", AddTopicCategoryActivity.a(this.a));
        intent.putExtra("book_post_list_bookTitle", AddTopicCategoryActivity.b(this.a));
        intent.putExtra("add_post_category", true);
        intent.putExtra("add_post_mode", AddTopicCategoryActivity.c(this.a));
        intent.putExtra("book_post_list_from_reader", AddTopicCategoryActivity.d(this.a));
        this.a.startActivity(intent);
    }
}
