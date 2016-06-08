package com.clilystudio.netbook.ui.home;

import android.support.v4.app.Fragment;

import com.umeng.a.b;

public abstract class HomeFragment extends Fragment {
    public abstract String a();

    public void onPause() {
        super.onPause();
        b.b(a());
    }

    public void onResume() {
        super.onResume();
        b.a(a());
    }
}

