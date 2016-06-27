package com.clilystudio.netbook.reader;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.ViewGroup;

import com.clilystudio.netbook.R;
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
        this.overridePendingTransition(R.anim.mode_list_exit_in, R.anim.mode_list_exit_out);
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_mode_list);
        this.c(R.string.select_read_mode);
        this.d(R.drawable.ic_close_white_24dp);
        this.a = this.getIntent().getIntExtra("BOOK_MODE", 5);
        this.b = this.getIntent().getStringExtra("BOOK_ID");
        this.c = this.getIntent().getStringExtra("BOOK_TITLE");
        if (this.a == 10) {
            this.a = 5;
        }
        ViewGroup viewGroup = (ViewGroup) this.findViewById(R.id.mode_list_root);
        viewGroup.addView(new ReadModeItem(this, R.drawable.mode_list_item_mix, R.string.reader_mode_mix, 5, this.a, this.b, this.c));
        viewGroup.addView(new ReadModeItem(this, R.drawable.mode_list_item_zg, R.string.reader_mode_res, 0, this.a, this.b, this.c));
        viewGroup.addView(new ReadModeItem(this, R.drawable.mode_list_item_sm, R.string.reader_mode_shenma, 4, this.a, this.b, this.c));
        viewGroup.addView(new ReadModeItem(this, R.drawable.mode_list_item_bd, R.string.reader_mode_baidu, 1, this.a, this.b, this.c));
        viewGroup.addView(new ReadModeItem(this, R.drawable.mode_list_item_tb, R.string.reader_mode_tieba, 2, this.a, this.b, this.c));
    }
}
