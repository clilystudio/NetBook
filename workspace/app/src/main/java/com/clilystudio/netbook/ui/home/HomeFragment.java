package com.clilystudio.netbook.ui.home;

import android.support.v4.app.Fragment;

import com.umeng.a.b;

public abstract class HomeFragment extends Fragment {
    public abstract String a();

    @Override
    public void onPause() {
        super.onPause();
        b.b(this.a());
    }

    @Override
    public void onResume() {
        super.onResume();
        b.a(this.a());
    }
}
