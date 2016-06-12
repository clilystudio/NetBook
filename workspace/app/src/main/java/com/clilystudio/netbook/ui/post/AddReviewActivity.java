package com.clilystudio.netbook.ui.post;

import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.aa;

import java.util.Collection;
import java.util.List;

public class AddReviewActivity extends BaseActivity {

    private com.clilystudio.netbook.adapter.a a;
    private String b;
    private int c = 0;

    static String a(AddReviewActivity AddReviewActivity1, String String2) {
        AddReviewActivity1.b = String2;
        return String2;
    }
// Error: Internal #201: 
// The following method may not be correct.

    static void a(AddReviewActivity AddReviewActivity1) {
    }

    static com.clilystudio.netbook.adapter.a b(AddReviewActivity AddReviewActivity1) {
        return AddReviewActivity1.a;
    }

    static void c(AddReviewActivity AddReviewActivity1) {
        MyApplication.a().a(new String[]{"saveToLocalReviewTitle", "saveToLocalReviewDesc"});
    }

    protected void onActivityResult(int int1, int int2, Intent Intent3) {
        super.onActivityResult(int1, int2, Intent3);
        if (int1 == 0 && int2 == -1)
            c = Intent3.getIntExtra("extraNextRating", 0);
        if (int2 == 256)
            finish();
    }

    public void onBackPressed() {
        if (b != null || c != 0) {
            h h1 = new h((Context) this);

            h1.d = "\u63D0\u793A";
            h1.e = "\u79BB\u5F00\u5C06\u4E22\u5931\u5DF2\u7F16\u8F91\u7684\u5185\u5BB9\uFF0C\u786E\u5B9A\u79BB\u5F00\uFF1F";
            h1.b("\u7559\u5728\u6B64\u9875", null);
            h1.a("\u79BB\u5F00", (DialogInterface$OnClickListener) new C(this));
            h1.a().show();
        } else
            super.onBackPressed();
    }

    public void onCreate(Bundle Bundle1) {
        View View2;
        ListView ListView3;
        Object Object4;
        int int5;

        super.onCreate(Bundle1);
        setContentView(2130903147);
        a(2131034298, 2131034419, (aa) new A(this));
        View2 = findViewById(2131493270);
        ListView3 = (ListView) findViewById(2131493271);
        ListView3.setOnItemClickListener((AdapterView$OnItemClickListener) new B(this));
        a = new com.clilystudio.netbook.adapter.a(getLayoutInflater());
        ListView3.setAdapter((ListAdapter) a);
        Object4 = BookReadRecord.getAll();
        if (Object4 != null && ((List) Object4).size() > 0) {
            a.a((Collection) Object4);
            int5 = 1;
        } else
            int5 = 0;
        if (int5 != 0)
            View2.setVisibility(8);
        else
            View2.setVisibility(0);
    }
}
