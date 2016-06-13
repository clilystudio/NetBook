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

public class AddReviewRatingActivity
        extends BaseActivity
        implements View.OnClickListener {
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
        int[] arrn = new int[]{2131493273, 2131493275, 2131493277, 2131493279, 2131493281};
        int n3 = 0;
        while (n3 < 5) {
            ImageView imageView = (ImageView) this.findViewById(arrn[n3]);
            if (n3 == n2 - 1) {
                imageView.setImageResource(2130837820);
            } else {
                imageView.setImageResource(2130837818);
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
            case 2131493272: {
                this.a = 5;
                **break;
            }
            case 2131493274: {
                this.a = 4;
                **break;
            }
            case 2131493276: {
                this.a = 3;
                **break;
            }
            case 2131493278: {
                this.a = 2;
            }
            lbl13:
            // 5 sources:
            default:
            {
                **GOTO lbl17
            }
            case 2131493280:
        }
        this.a = 1;
        lbl17:
        // 2 sources:
        this.a(this.a);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903148);
        this.a(2131034297, 2131034419, (aa) new G(this));
        int[] arrn = new int[]{2131493272, 2131493274, 2131493276, 2131493278, 2131493280};
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
