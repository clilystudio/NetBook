package com.clilystudio.netbook.ui.home;

import android.support.v4.app.Fragment;

import com.xiaomi.mistatistic.sdk.MiStatInterfaceImpl;

public abstract class HomeFragment extends Fragment {
    public abstract String a();

    @Override
    public void onPause() {
        super.onPause();
        MiStatInterfaceImpl.recordPageStart(getContext(), this.a());
     }

    @Override
    public void onResume() {
        super.onResume();
        MiStatInterfaceImpl.recordPageEnd(getContext(), this.a());
    }
}
