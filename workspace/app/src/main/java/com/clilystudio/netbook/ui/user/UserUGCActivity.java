package com.clilystudio.netbook.ui.user;

import android.os.Bundle;
import android.support.v4.app.Fragment;

import com.clilystudio.netbook.ui.SimpleTabActivity;
import com.clilystudio.netbook.ui.ugcbook.DraftUGCListFragment;
import com.clilystudio.netbook.ui.ugcbook.FavUGCListFragment;
import com.clilystudio.netbook.ui.ugcbook.MyUGCListFragment;

public class UserUGCActivity extends SimpleTabActivity {
    @Override
    protected final void b() {
        this.b = 3;
        this.c = new String[]{"fragmentTag0", "fragmentTag1", "fragmentTag2"};
    }

    @Override
    public final String[] h() {
        return new String[]{"已发布", "草稿箱", "收藏夹"};
    }

    @Override
    public final Fragment[] i() {
        return new Fragment[]{new MyUGCListFragment(), new DraftUGCListFragment(), new FavUGCListFragment()};
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.b("我的书单");
    }
}
