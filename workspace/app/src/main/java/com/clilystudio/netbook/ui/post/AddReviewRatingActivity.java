package com.clilystudio.netbook.ui.post;

import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.ImageView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.aa;

public class AddReviewRatingActivity extends BaseActivity implements View$OnClickListener {

    private int a;

    static void a(AddReviewRatingActivity AddReviewRatingActivity1) {
    }
// Error: Internal #201: 
// The following method may not be correct.

    static void b(AddReviewRatingActivity AddReviewRatingActivity1) {
        MyApplication.a().a(new String[]{"saveToLocalReviewTitle", "saveToLocalReviewDesc"});
    }

    private void a(int int1) {
        int int2 = 6 - int1;
        int[] int_1darray3 = {2131493273, 2131493275, 2131493277, 2131493279, 2131493281};
        int int4;

        for (int4 = 0; int4 < 5; ++int4) {
            ImageView ImageView5 = (ImageView) findViewById(int_1darray3[int4]);

            if (int4 == int2 - 1)
                ImageView5.setImageResource(2130837820);
            else
                ImageView5.setImageResource(2130837818);
        }
    }

    protected void onActivityResult(int int1, int int2, Intent Intent3) {
        if (int2 == 256) {
            setResult(256);
            finish();
        }
        super.onActivityResult(int1, int2, Intent3);
    }

    public void onBackPressed() {
        if (a > 0 && a <= 5) {
            if (getIntent().getBooleanExtra("isFromBookReviewList", false)) {
                h h1 = new h((Context) this);

                h1.d = "\u63D0\u793A";
                h1.e = "\u79BB\u5F00\u5C06\u4E22\u5931\u5DF2\u7F16\u8F91\u7684\u5185\u5BB9\uFF0C\u786E\u5B9A\u79BB\u5F00\uFF1F";
                h1.b("\u7559\u5728\u6B64\u9875", null);
                h1.a("\u79BB\u5F00", (DialogInterface$OnClickListener) new H(this));
                h1.a().show();
            } else {
                Intent Intent4 = getIntent();

                Intent4.putExtra("extraNextRating", a);
                setResult(-1, Intent4);
                finish();
            }
        } else
            super.onBackPressed();
    }

    public void onClick(View View1) {
        switch (View1.getId()) {
            case 408:
                a = 5;
                break;
            case 410:
                a = 4;
                break;
            case 412:
                a = 3;
                break;
            case 414:
                a = 2;
                break;
            case 416:
                a = 1;
                break;
            case 409:
            case 411:
            case 413:
            case 415:
            default:
                break;
        }
        a(a);
    }

    public void onCreate(Bundle Bundle1) {
        int[] int_1darray2;
        int int3;
        int int4;

        super.onCreate(Bundle1);
        setContentView(2130903148);
        a(2131034297, 2131034419, (aa) new G(this));
        int_1darray2 = new int[]{2131493272, 2131493274, 2131493276, 2131493278, 2131493280};
        for (int3 = 0; int3 < 5; ++int3)
            findViewById(int_1darray2[int3]).setOnClickListener(this);
        int4 = getIntent().getIntExtra("AddBookReviewRating", 0);
        if (int4 > 0 && int4 <= 5) {
            a = int4;
            a(a);
        }
    }
}
