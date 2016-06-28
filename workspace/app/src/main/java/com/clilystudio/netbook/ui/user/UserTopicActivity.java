package com.clilystudio.netbook.ui.user;

import android.os.Bundle;
import android.support.v4.app.Fragment;

import com.clilystudio.netbook.ui.SimpleTabActivity;

public class UserTopicActivity extends SimpleTabActivity {
    @Override
    public final String[] h() {
        return new String[]{"发布的话题", "收藏的话题"};
    }

    @Override
    public final Fragment[] i() {
        return new Fragment[]{new MyTopicFragment(), new MyFavTopicFragment()};
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.b("话题");
    }
}
