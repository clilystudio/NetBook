package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.aa;
import com.clilystudio.netbook.util.e;

public class AddReviewRatingActivity extends BaseActivity implements View.OnClickListener {
    private int a;

    static /* synthetic */ void a(AddReviewRatingActivity addReviewRatingActivity) {
        if (addReviewRatingActivity.a <= 0 || addReviewRatingActivity.a > 5) {
            e.a((Activity) addReviewRatingActivity, (String) "\u7ed9\u4e66\u7c4d\u6253\u4e2a\u5206\u6570\u5427");
            return;
        }
        String string = addReviewRatingActivity.getIntent().getStringExtra("bookReviewBookId");
        Intent intent = new Intent(addReviewRatingActivity, AddReviewContentActivity.class);
        intent.putExtras(addReviewRatingActivity.getIntent().getExtras());
        intent.putExtra("bookReviewBookId", string);
        intent.putExtra("bookReviewBookRating", addReviewRatingActivity.a);
        intent.putExtra("isFromBookReviewList", addReviewRatingActivity.getIntent().getBooleanExtra("isFromBookReviewList", false));
        addReviewRatingActivity.startActivityForResult(intent, 0);
    }

    static /* synthetic */ void b(AddReviewRatingActivity addReviewRatingActivity) {
        MyApplication.a().a(new String[]{"saveToLocalReviewTitle", "saveToLocalReviewDesc"});
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(int n) {
        int n2 = 6 - n;
        int[] arrn = new int[]{R.id.review_rating_item1_icon, R.id.review_rating_item2_icon, R.id.review_rating_item3_icon, R.id.review_rating_item4_icon, R.id.review_rating_item5_icon};
        int n3 = 0;
        while (n3 < 5) {
            ImageView imageView = (ImageView) this.findViewById(arrn[n3]);
            if (n3 == n2 - 1) {
                imageView.setImageResource(R.drawable.green_tick_circle);
            } else {
                imageView.setImageResource(R.drawable.gray_tick_circle);
            }
            ++n3;
        }
    }

    @Override
    protected void onActivityResult(int n, int n2, Intent intent) {
        if (n2 == 256) {
            this.setResult(256);
            this.finish();
        }
        super.onActivityResult(n, n2, intent);
    }

    @Override
    public void onBackPressed() {
        if (this.a > 0 && this.a <= 5) {
            if (this.getIntent().getBooleanExtra("isFromBookReviewList", false)) {
                h h2 = new h(this);
                h2.d = "\u63d0\u793a";
                h2.e = "\u79bb\u5f00\u5c06\u4e22\u5931\u5df2\u7f16\u8f91\u7684\u5185\u5bb9\uff0c\u786e\u5b9a\u79bb\u5f00\uff1f";
                h2.b("\u7559\u5728\u6b64\u9875", null);
                h2.a("\u79bb\u5f00", (DialogInterface.OnClickListener) new H(this));
                h2.a().show();
                return;
            }
            Intent intent = this.getIntent();
            intent.putExtra("extraNextRating", this.a);
            this.setResult(-1, intent);
            this.finish();
            return;
        }
        super.onBackPressed();
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public void onClick(View var1_1) {
        switch (var1_1.getId()) {
            case R.id.review_rating_item1: {
                this.a = 5;
                **break;
            }
            case R.id.review_rating_item2: {
                this.a = 4;
                **break;
            }
            case R.id.review_rating_item3: {
                this.a = 3;
                **break;
            }
            case R.id.review_rating_item4: {
                this.a = 2;
            }
            lbl13:
            // 5 sources:
            default:
            {
                **GOTO lbl17
            }
            case R.id.review_rating_item5:
        }
        this.a = 1;
        lbl17:
        // 2 sources:
        this.a(this.a);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.add_review_rating);
        this.a(R.string.add_review_rating_title, R.string.next, (aa) new G(this));
        int[] arrn = new int[]{R.id.review_rating_item1, R.id.review_rating_item2, R.id.review_rating_item3, R.id.review_rating_item4, R.id.review_rating_item5};
        for (int i = 0; i < 5; ++i) {
            this.findViewById(arrn[i]).setOnClickListener(this);
        }
        int n = this.getIntent().getIntExtra("AddBookReviewRating", 0);
        if (n > 0 && n <= 5) {
            this.a = n;
            this.a(this.a);
        }
    }
}
