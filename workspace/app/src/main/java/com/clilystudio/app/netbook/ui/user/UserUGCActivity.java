package com.clilystudio.app.netbook.ui.user;

import android.os.Bundle;
import android.support.v4.app.Fragment;

import com.clilystudio.app.netbook.ui.SimpleTabActivity;
import com.clilystudio.app.netbook.ui.ugcbook.DraftUGCListFragment;
import com.clilystudio.app.netbook.ui.ugcbook.FavUGCListFragment;
import com.clilystudio.app.netbook.ui.ugcbook.MyUGCListFragment;

public class UserUGCActivity extends SimpleTabActivity {
    protected final void b() {
        this.b = 3;
        this.c = new String[]{"fragmentTag0", "fragmentTag1", "fragmentTag2"};
    }

    public final String[] h() {
        return new String[]{"已发布", "草稿箱", "收藏夹"};
    }

    public final Fragment[] i() {
        Fragment[] arrayOfFragment = new Fragment[3];
        arrayOfFragment[0] = new MyUGCListFragment();
        arrayOfFragment[1] = new DraftUGCListFragment();
        arrayOfFragment[2] = new FavUGCListFragment();
        return arrayOfFragment;
    }

    protected void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        b_initContentView("我的书单");
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.UserUGCActivity
 * JD-Core Version:    0.6.2
 */