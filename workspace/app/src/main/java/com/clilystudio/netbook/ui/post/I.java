package com.clilystudio.netbook.ui.post;

import android.content.Intent;
import android.view.View;

final class I
        implements View.OnClickListener {
    I(AddTopicCategoryActivity paramAddTopicCategoryActivity) {
    }

    public final void onClick(View paramView) {
        Intent localIntent = new Intent(this.a, AddTopicActivity.class);
        localIntent.putExtra("book_post_list_bookId", AddTopicCategoryActivity.a(this.a));
        localIntent.putExtra("book_post_list_bookTitle", AddTopicCategoryActivity.b(this.a));
        localIntent.putExtra("add_post_mode", AddTopicCategoryActivity.c(this.a));
        localIntent.putExtra("book_post_list_from_reader", AddTopicCategoryActivity.d(this.a));
        this.a.startActivity(localIntent);
    }
}

