package com.clilystudio.netbook.reader;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.ViewGroup;

import com.clilystudio.netbook.d;
import com.clilystudio.netbook.ui.BaseActivity;

public class ModeListActivity extends BaseActivity {
    private int a;
    private String b;
    private String c;

    public static Intent a(Context context, String string, String string2, int n) {
        return new d().a(context, ModeListActivity.class).a("BOOK_ID", string).a("BOOK_TITLE", string2).a("BOOK_MODE", n).a();
    }

    @Override
    public void finish() {
        super.finish();
        this.overridePendingTransition(2130968604, 2130968605);
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903113);
        this.c(2131034481);
        this.d(2130837881);
        this.a = this.getIntent().getIntExtra("BOOK_MODE", 5);
        this.b = this.getIntent().getStringExtra("BOOK_ID");
        this.c = this.getIntent().getStringExtra("BOOK_TITLE");
        if (this.a == 10) {
            this.a = 5;
        }
        ViewGroup viewGroup = (ViewGroup) this.findViewById(2131493144);
        viewGroup.addView(new ReadModeItem(this, 2130838015, 2131034457, 5, this.a, this.b, this.c));
        viewGroup.addView(new ReadModeItem(this, 2130838019, 2131034458, 0, this.a, this.b, this.c));
        viewGroup.addView(new ReadModeItem(this, 2130838017, 2131034459, 4, this.a, this.b, this.c));
        viewGroup.addView(new ReadModeItem(this, 2130838009, 2131034456, 1, this.a, this.b, this.c));
        viewGroup.addView(new ReadModeItem(this, 2130838018, 2131034460, 2, this.a, this.b, this.c));
    }
}
