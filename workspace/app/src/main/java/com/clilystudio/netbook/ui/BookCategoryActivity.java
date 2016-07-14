package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;

import com.clilystudio.netbook.CachePathConst;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.BaseAsyncTask;
import com.clilystudio.netbook.util.am;
import com.clilystudio.netbook.IntentBuilder;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.model.CategoryLevelRoot;
import com.clilystudio.netbook.model.CategoryRoot;

public class BookCategoryActivity extends BaseActivity {
    private View a;
    private View b;
    private View c;

    public static Intent a(Context context) {
        return new IntentBuilder().put(context, BookCategoryActivity.class).build();
    }

    static /* synthetic */ void a(BookCategoryActivity bookCategoryActivity) {
        bookCategoryActivity.b();
    }

    static /* synthetic */ void a(BookCategoryActivity bookCategoryActivity, int n) {
        bookCategoryActivity.a(n);
    }

    static /* synthetic */ void a(CategoryLevelRoot categoryLevelRoot) {
        com.clilystudio.netbook.util.a.a(categoryLevelRoot, CachePathConst.CategoryLevel, "category_level.txt");
    }

    static /* synthetic */ void a(BookCategoryActivity bookCategoryActivity, CategoryRoot categoryRoot) {
        CategoryRoot.Category[] arrcategoryRoot$Category = categoryRoot.getMale();
        CategoryRoot.Category[] arrcategoryRoot$Category2 = categoryRoot.getFemale();
        if (arrcategoryRoot$Category == null || arrcategoryRoot$Category2 == null) {
            return;
        }
        int n = bookCategoryActivity.getResources().getDisplayMetrics().widthPixels / 3;
        int n2 = com.clilystudio.netbook.util.a.a(bookCategoryActivity, 56.0f);
        bookCategoryActivity.a(n, n2, arrcategoryRoot$Category, true);
        bookCategoryActivity.a(n, n2, arrcategoryRoot$Category2, false);
    }

    private void a(int n) {
        switch (n) {
            default: {
                return;
            }
            case 1: {
                this.c.setVisibility(View.VISIBLE);
                this.a.setVisibility(View.GONE);
                this.b.setVisibility(View.GONE);
                return;
            }
            case 0: {
                this.c.setVisibility(View.GONE);
                this.a.setVisibility(View.VISIBLE);
                this.b.setVisibility(View.GONE);
                return;
            }
            case 2:
        }
        this.c.setVisibility(View.GONE);
        this.a.setVisibility(View.GONE);
        this.b.setVisibility(View.VISIBLE);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(int n, int n2, CategoryRoot.Category[] arrcategoryRoot$Category, final boolean bl) {
        int n3 = 0;
        TableRow tableRow = null;
        TableRow.LayoutParams layoutParams = new TableRow.LayoutParams(-1, -2);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        int n4 = am.b(this, R.attr.audiobookCategoryItemSelector);
        int n5 = 0;
        while (n5 < arrcategoryRoot$Category.length) {
            int n6;
            TableRow tableRow2;
            CategoryRoot.Category category = arrcategoryRoot$Category[n5];
            final String string = category.getName();
            int n7 = category.getBookCount();
            TableLayout tableLayout = bl ? (TableLayout) this.findViewById(R.id.tags_layout_boy) : (TableLayout) this.findViewById(R.id.tags_layout_girl);
            if (n5 % 3 == 0) {
                tableRow2 = new TableRow(this);
                tableLayout.addView(tableRow2, layoutParams);
                n6 = n3 + 1;
            } else {
                tableRow2 = tableRow;
                n6 = n3;
            }
            TableRow.LayoutParams layoutParams3 = new TableRow.LayoutParams(n, n2);
            if (n6 == 1) {
                if (n5 % 3 == 1) {
                    layoutParams3.setMargins(-1, 0, -1, 0);
                } else {
                    layoutParams3.setMargins(0, 0, 0, 0);
                }
            } else if (n5 % 3 == 1) {
                layoutParams3.setMargins(-1, -1, -1, 0);
            } else {
                layoutParams3.setMargins(0, -1, 0, 0);
            }
            LinearLayout linearLayout = new LinearLayout(this);
            linearLayout.setOrientation(LinearLayout.VERTICAL);
            linearLayout.setGravity(17);
            linearLayout.setBackgroundResource(n4);
            linearLayout.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    BookCategoryActivity.this.startActivity(BookCategoryListActivity.a(BookCategoryActivity.this, bl, string));
                }
            });
            TextView textView = new TextView(this);
            textView.setText(string);
            textView.setGravity(1);
            textView.setTextAppearance(this, R.style.book_category_item_large);
            linearLayout.addView(textView, layoutParams2);
            TextView textView2 = new TextView(this);
            String text = "" + n7 + " 本";
            textView2.setText(text);
            textView2.setGravity(1);
            textView2.setTextAppearance(this, R.style.book_category_item_small);
            linearLayout.addView(textView2, layoutParams2);
            tableRow2.addView(linearLayout, layoutParams3);
            ++n5;
            n3 = n6;
            tableRow = tableRow2;
        }
    }

    private void b() {
        this.a(0);
        new BaseAsyncTask<String, Void, CategoryRoot>() {

            @Override
            protected CategoryRoot doInBackground(String... params) {
                return ApiServiceProvider.getApiService().e();
            }

            @Override
            protected void onPostExecute(CategoryRoot categoryRoot) {
                super.onPostExecute(categoryRoot);
                if (categoryRoot != null && categoryRoot.isOk()) {
                    BookCategoryActivity.a(BookCategoryActivity.this, 1);
                    BookCategoryActivity.a(BookCategoryActivity.this, categoryRoot);
                    return;
                }
                BookCategoryActivity.a(BookCategoryActivity.this, 2);

            }
        }.b();
        new BaseAsyncTask<String, Void, CategoryLevelRoot>() {

            @Override
            protected CategoryLevelRoot doInBackground(String... params) {
                return ApiServiceProvider.getApiService().f();
            }

            @Override
            protected void onPostExecute(CategoryLevelRoot categoryLevelRoot) {
                super.onPostExecute(categoryLevelRoot);
                if (categoryLevelRoot != null && categoryLevelRoot.isOk()) {
                    BookCategoryActivity.a(categoryLevelRoot);
                }
            }
        }.b();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_book_category_root);
        this.b(R.string.category_title);
        this.c = this.findViewById(R.id.content_category);
        this.a = this.findViewById(R.id.content_loading_pb);
        this.b = this.findViewById(R.id.content_load_error);
        this.b.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                BookCategoryActivity.a(BookCategoryActivity.this);
            }
        });
        this.b();
    }
}
