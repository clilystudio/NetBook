package com.clilystudio.netbook.ui.game;

import android.content.res.TypedArray;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;

import com.clilystudio.netbook.ui.BaseLoadingFragment;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

public class GameCatListFragment extends BaseLoadingFragment {
    private ListView a;
    private b b;

    static /* synthetic */ ListView a(GameCatListFragment gameCatListFragment) {
        return gameCatListFragment.a;
    }

    static /* synthetic */ b b(GameCatListFragment gameCatListFragment) {
        return gameCatListFragment.b;
    }

    @Override
    protected final int a() {
        return R.layout.listview;
    }

    @Override
    protected final void b() {
        this.f();
        new c(this, 0).b((Object[]) new String[0]);
    }

    @Override
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.a.setDividerHeight(0);
        TypedArray typedArray = this.getActivity().getTheme().obtainStyledAttributes(new int[]{R.attr.backgroundNormal});
        int n = typedArray.getResourceId(0, R.color.home_item_hightlight);
        typedArray.recycle();
        FragmentActivity fragmentActivity = this.getActivity();
        ListView listView = this.a;
        int n2 = fragmentActivity.getResources().getDimensionPixelSize(R.dimen.tab_overlap);
        View view = new View(fragmentActivity);
        view.setLayoutParams(new AbsListView.LayoutParams(-2, n2));
        view.setBackgroundResource(n);
        listView.addHeaderView(view, null, false);
        this.b = new b(this, LayoutInflater.from(this.getActivity()));
        this.a.setAdapter((ListAdapter) ((Object) this.b));
        this.a.setOnItemClickListener((AdapterView.OnItemClickListener) ((Object) new a(this)));
        this.b();
    }

    @Override
    public void onPause() {
        super.onPause();
    }

    @Override
    public void onResume() {
        super.onResume();
        MiStatInterface.recordCountEvent("game_cate",null);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.a = (ListView) view.findViewById(R.id.content_list);
    }
}
