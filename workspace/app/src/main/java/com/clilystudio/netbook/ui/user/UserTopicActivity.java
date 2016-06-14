package com.clilystudio.netbook.ui.user;

import android.os.Bundle;
import android.support.v4.app.Fragment;

import com.clilystudio.netbook.ui.SimpleTabActivity;

public class UserTopicActivity extends SimpleTabActivity {
    @Override
    public final String[] h() {
        return new String[]{"\u53d1\u5e03\u7684\u8bdd\u9898", "\u6536\u85cf\u7684\u8bdd\u9898"};
    }

    @Override
    public final Fragment[] i() {
        Fragment[] arrfragment = new Fragment[]{new MyTopicFragment(), new MyFavTopicFragment()};
        return arrfragment;
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.b("\u8bdd\u9898");
    }
}
