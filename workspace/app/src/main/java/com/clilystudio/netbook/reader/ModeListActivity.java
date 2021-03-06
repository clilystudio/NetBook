package com.clilystudio.netbook.reader;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.ViewGroup;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.IntentBuilder;
import com.clilystudio.netbook.ui.BaseActivity;

public class ModeListActivity extends BaseActivity {

    public static Intent a(Context context, String string, String string2, int n) {
        return new IntentBuilder().put(context, ModeListActivity.class).put("BOOK_ID", string).put("BOOK_TITLE", string2).put("BOOK_MODE", n).build();
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
        int a = this.getIntent().getIntExtra("BOOK_MODE", 5);
        String b = this.getIntent().getStringExtra("BOOK_ID");
        String c = this.getIntent().getStringExtra("BOOK_TITLE");
        if (a == 10) {
            a = 5;
        }
        ViewGroup viewGroup = (ViewGroup) this.findViewById(R.id.mode_list_root);
        assert viewGroup != null;
        viewGroup.addView(new ReadModeItem(this, R.drawable.mode_list_item_mix, R.string.reader_mode_mix, 5, a, b, c));
        viewGroup.addView(new ReadModeItem(this, R.drawable.mode_list_item_zg, R.string.reader_mode_res, 0, a, b, c));
        viewGroup.addView(new ReadModeItem(this, R.drawable.mode_list_item_sm, R.string.reader_mode_shenma, 4, a, b, c));
        viewGroup.addView(new ReadModeItem(this, R.drawable.mode_list_item_bd, R.string.reader_mode_baidu, 1, a, b, c));
        viewGroup.addView(new ReadModeItem(this, R.drawable.mode_list_item_tb, R.string.reader_mode_tieba, 2, a, b, c));
    }
}
