package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.adapter.a;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.aa;
import com.clilystudio.netbook.util.e;

import java.util.List;

public class AddReviewActivity extends BaseActivity {
    private a a;
    private String b;
    private int c = 0;

    static /* synthetic */ String a(AddReviewActivity addReviewActivity, String string) {
        addReviewActivity.b = string;
        return string;
    }

    static /* synthetic */ void a(AddReviewActivity addReviewActivity) {
        if (addReviewActivity.a.b() == -1) {
            e.a((Activity) addReviewActivity, (String) "\u4f60\u8fd8\u6ca1\u6709\u9009\u62e9\u8bc4\u8bba\u7684\u4e66\u7c4d");
            return;
        }
        Intent intent = new Intent(addReviewActivity, AddReviewRatingActivity.class);
        Bundle bundle = addReviewActivity.getIntent().getExtras();
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        intent.putExtra("bookReviewBookId", addReviewActivity.b);
        if (addReviewActivity.c != 0) {
            intent.putExtra("AddBookReviewRating", addReviewActivity.c);
        }
        addReviewActivity.startActivityForResult(intent, 0);
    }

    static /* synthetic */ a b(AddReviewActivity addReviewActivity) {
        return addReviewActivity.a;
    }

    static /* synthetic */ void c(AddReviewActivity addReviewActivity) {
        MyApplication.a().a(new String[]{"saveToLocalReviewTitle", "saveToLocalReviewDesc"});
    }

    @Override
    protected void onActivityResult(int n, int n2, Intent intent) {
        super.onActivityResult(n, n2, intent);
        if (n == 0 && n2 == -1) {
            this.c = intent.getIntExtra("extraNextRating", 0);
        }
        if (n2 == 256) {
            this.finish();
        }
    }

    @Override
    public void onBackPressed() {
        if (this.b != null || this.c != 0) {
            h h2 = new h(this);
            h2.d = "\u63d0\u793a";
            h2.e = "\u79bb\u5f00\u5c06\u4e22\u5931\u5df2\u7f16\u8f91\u7684\u5185\u5bb9\uff0c\u786e\u5b9a\u79bb\u5f00\uff1f";
            h2.b("\u7559\u5728\u6b64\u9875", null);
            h2.a("\u79bb\u5f00", (DialogInterface.OnClickListener) new C(this));
            h2.a().show();
            return;
        }
        super.onBackPressed();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onCreate(Bundle bundle) {
        boolean bl;
        super.onCreate(bundle);
        this.setContentView(R.layout.add_review);
        this.a(R.string.add_review_title, R.string.next, (aa) new A(this));
        View view = this.findViewById(R.id.add_review_empty);
        ListView listView = (ListView) this.findViewById(R.id.add_review_list);
        listView.setOnItemClickListener(new B(this));
        this.a = new a(this.getLayoutInflater());
        listView.setAdapter((ListAdapter) ((Object) this.a));
        List<BookReadRecord> list = BookReadRecord.getAll();
        if (list != null && list.size() > 0) {
            this.a.a(list);
            bl = true;
        } else {
            bl = false;
        }
        if (bl) {
            view.setVisibility(View.GONE);
            return;
        }
        view.setVisibility(View.VISIBLE);
    }
}
