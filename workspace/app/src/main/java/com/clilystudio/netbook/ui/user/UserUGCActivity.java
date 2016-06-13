package com.clilystudio.netbook.ui.user;

import android.os.Bundle;
import android.support.v4.app.Fragment;

import com.clilystudio.netbook.ui.SimpleTabActivity;
import com.clilystudio.netbook.ui.ugcbook.DraftUGCListFragment;
import com.clilystudio.netbook.ui.ugcbook.FavUGCListFragment;
import com.clilystudio.netbook.ui.ugcbook.MyUGCListFragment;

public class UserUGCActivity
        extends SimpleTabActivity {
    @Override
    protected final void b() {
        this.b = 3;
        this.c = new String[]{"fragmentTag0", "fragmentTag1", "fragmentTag2"};
    }

    @Override
    public final String[] h() {
        return new String[]{"\u5df2\u53d1\u5e03", "\u8349\u7a3f\u7bb1", "\u6536\u85cf\u5939"};
    }

    @Override
    public final Fragment[] i() {
        Fragment[] arrfragment = new Fragment[]{new MyUGCListFragment(), new DraftUGCListFragment(), new FavUGCListFragment()};
        return arrfragment;
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.b("\u6211\u7684\u4e66\u5355");
    }
}
