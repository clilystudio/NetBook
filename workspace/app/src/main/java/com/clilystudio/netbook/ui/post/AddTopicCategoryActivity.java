package com.clilystudio.netbook.ui.post;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.ui.BaseActivity;

public class AddTopicCategoryActivity extends BaseActivity {
    private String a;
    private String b;
    private String c;
    private boolean e;

    static /* synthetic */ String a(AddTopicCategoryActivity addTopicCategoryActivity) {
        return addTopicCategoryActivity.a;
    }

    static /* synthetic */ String b(AddTopicCategoryActivity addTopicCategoryActivity) {
        return addTopicCategoryActivity.b;
    }

    static /* synthetic */ String c(AddTopicCategoryActivity addTopicCategoryActivity) {
        return addTopicCategoryActivity.c;
    }

    static /* synthetic */ boolean d(AddTopicCategoryActivity addTopicCategoryActivity) {
        return addTopicCategoryActivity.e;
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.add_post_category);
        this.b(R.string.add_post_category_title);
        com.clilystudio.netbook.a.a();
        com.clilystudio.netbook.a.a(this);
        this.a = this.getIntent().getStringExtra("book_post_list_bookId");
        this.b = this.getIntent().getStringExtra("book_post_list_bookTitle");
        this.c = this.getIntent().getStringExtra("add_post_mode");
        this.e = this.getIntent().getBooleanExtra("book_post_list_from_reader", false);
        View view = this.findViewById(R.id.add_post_category_1);
        View view2 = this.findViewById(R.id.add_post_category_2);
        view.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(AddTopicCategoryActivity.this, AddTopicActivity.class);
                intent.putExtra("book_post_list_bookId", AddTopicCategoryActivity.a(AddTopicCategoryActivity.this));
                intent.putExtra("book_post_list_bookTitle", AddTopicCategoryActivity.b(AddTopicCategoryActivity.this));
                intent.putExtra("add_post_mode", AddTopicCategoryActivity.c(AddTopicCategoryActivity.this));
                intent.putExtra("book_post_list_from_reader", AddTopicCategoryActivity.d(AddTopicCategoryActivity.this));
                AddTopicCategoryActivity.this.startActivity(intent);
            }
        });
        view2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(AddTopicCategoryActivity.this, AddVoteActivity.class);
                intent.putExtra("book_post_list_bookId", AddTopicCategoryActivity.a(AddTopicCategoryActivity.this));
                intent.putExtra("book_post_list_bookTitle", AddTopicCategoryActivity.b(AddTopicCategoryActivity.this));
                intent.putExtra("add_post_category", true);
                intent.putExtra("add_post_mode", AddTopicCategoryActivity.c(AddTopicCategoryActivity.this));
                intent.putExtra("book_post_list_from_reader", AddTopicCategoryActivity.d(AddTopicCategoryActivity.this));
                AddTopicCategoryActivity.this.startActivity(intent);
            }
        });
    }
}
