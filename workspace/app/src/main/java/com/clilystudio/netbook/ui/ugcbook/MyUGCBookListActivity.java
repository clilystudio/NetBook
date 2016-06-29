package com.clilystudio.netbook.ui.ugcbook;

import android.os.Bundle;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.ui.BaseActivity;

public class MyUGCBookListActivity extends BaseActivity {
    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_my_ugc_book_list);
        this.b("我的书单");
    }
}
