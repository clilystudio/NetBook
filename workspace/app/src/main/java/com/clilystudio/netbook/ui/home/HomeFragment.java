package com.clilystudio.netbook.ui.home;

import android.support.v4.app.Fragment;

public abstract class HomeFragment extends Fragment {

    public abstract String a();

    public void onPause() {
        super.onPause();
        com.umeng.a.b.b(a());
    }

    public void onResume() {
        super.onResume();
        com.umeng.a.b.a(a());
    }
}
