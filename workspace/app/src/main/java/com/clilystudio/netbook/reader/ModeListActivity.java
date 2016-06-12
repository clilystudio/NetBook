package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;

import com.clilystudio.netbook.ui.BaseActivity;

public class ModeListActivity extends BaseActivity {

    private int a;
    private String b;
    private String c;
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, String String2, String String3, int int4) {
    }

    public void finish() {
        super.finish();
        overridePendingTransition(2130968604, 2130968605);
    }

    protected void onCreate(Bundle Bundle1) {
        ViewGroup ViewGroup2;

        super.onCreate(Bundle1);
        setContentView(2130903113);
        c(2131034481);
        d(2130837881);
        a = getIntent().getIntExtra("BOOK_MODE", 5);
        b = getIntent().getStringExtra("BOOK_ID");
        c = getIntent().getStringExtra("BOOK_TITLE");
        if (a == 10)
            a = 5;
        ViewGroup2 = (ViewGroup) findViewById(2131493144);
        ViewGroup2.addView((View) new ReadModeItem((Activity) this, 2130838015, 2131034457, 5, a, b, c));
        ViewGroup2.addView((View) new ReadModeItem((Activity) this, 2130838019, 2131034458, 0, a, b, c));
        ViewGroup2.addView((View) new ReadModeItem((Activity) this, 2130838017, 2131034459, 4, a, b, c));
        ViewGroup2.addView((View) new ReadModeItem((Activity) this, 2130838009, 2131034456, 1, a, b, c));
        ViewGroup2.addView((View) new ReadModeItem((Activity) this, 2130838018, 2131034460, 2, a, b, c));
    }
}
