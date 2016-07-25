package com.clilystudio.netbook.ui.ugcbook;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.ViewPager;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import android.widget.TabHost;
import android.widget.TabWidget;
import android.widget.TableLayout;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.BaseAsyncTask;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.model.UgcFilterRoot;
import com.clilystudio.netbook.ui.ActionBarClickListener;
import com.clilystudio.netbook.ui.BaseTabActivity;
import com.clilystudio.netbook.adapter.BasePagerAdapter;
import com.clilystudio.netbook.util.CommonUtil;
import com.clilystudio.netbook.widget.UgcFilterTextView;

import java.util.ArrayList;
import java.util.List;

public class UGCMainActivity extends BaseTabActivity implements ViewPager.OnPageChangeListener,
        TabHost.OnTabChangeListener,
        TabHost.TabContentFactory {
    private List<UGCMainListFragment> b = new ArrayList<>();
    private ViewPager c;
    private UgcMainAdapter e;
    private PopupWindow f;
    private PopupWindow g;
    private PopupWindow h;
    private String i;
    private RecyclerView j;
    private ViewHolder k;

    static void a(UGCMainActivity uGCMainActivity, String string) {
        if (!uGCMainActivity.i.equals(string)) {
            uGCMainActivity.i = string;
            uGCMainActivity.d(string);
            uGCMainActivity.k.notifyDataSetChanged();
            uGCMainActivity.b.get(uGCMainActivity.c.getCurrentItem()).a();
            uGCMainActivity.b.get(uGCMainActivity.c.getCurrentItem()).a(uGCMainActivity.i);
        }
        uGCMainActivity.h();
    }

    private PopupWindow a(PopupWindow popupWindow, View view) {
        if (popupWindow == null) {
            popupWindow = new PopupWindow(view, -1, -1);
            popupWindow.setFocusable(true);
            popupWindow.setOutsideTouchable(true);
            popupWindow.setBackgroundDrawable(new ColorDrawable(0));
            popupWindow.getContentView().setFocusableInTouchMode(true);
            popupWindow.getContentView().setFocusable(true);
            popupWindow.getContentView().setOnKeyListener(new View.OnKeyListener() {
                @Override
                public boolean onKey(View v, int keyCode, KeyEvent event) {
                    if (event.getAction() == 0 && keyCode == KeyEvent.KEYCODE_MENU && event.getRepeatCount() == 0) {
                        UGCMainActivity.this.f();
                        return true;
                    } else {
                        return false;
                    }
                }
            });
        }
        return popupWindow;
    }

    private void f() {
        if (this.g != null && this.g.isShowing()) {
            this.g.dismiss();
        }
        if (this.h != null && this.h.isShowing()) {
            this.h.dismiss();
        }
        this.g();
    }

    private void g() {
        if (this.f != null && this.f.isShowing()) {
            this.f.dismiss();
        }
    }

    private void h() {
        if (this.h != null && this.h.isShowing()) {
            this.h.dismiss();
        }
        this.e("\u7b5b\u9009");
    }

    public final UGCMainListFragment a(String string, String string2, String string3) {
        UGCMainListFragment uGCMainListFragment = (UGCMainListFragment) this.getSupportFragmentManager().findFragmentByTag(string);
        if (uGCMainListFragment == null) {
            uGCMainListFragment = UGCMainListFragment.a(string2, string3);
        }
        uGCMainListFragment.a(this.i);
        return uGCMainListFragment;
    }

    public final String b() {
        return this.i;
    }

    @Override
    public View createTabContent(String string) {
        View view = new View(this);
        view.setMinimumHeight(0);
        view.setMinimumWidth(0);
        return view;
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_ugc_main_tabhost);
        View view = this.getLayoutInflater().inflate(R.layout.ugc_popupwindow_layout, (ViewGroup) getWindow().getDecorView(), false);
        this.g = this.a(this.g, view);
        this.g.setOnDismissListener(new PopupWindow.OnDismissListener() {
            @Override
            public void onDismiss() {
                UGCMainActivity.this.g();
            }
        });
        view.findViewById(R.id.back_view).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                UGCMainActivity.this.f();
            }
        });
        View view2 = LayoutInflater.from(this).inflate(R.layout.ugc_filter_popupwindow, (ViewGroup) getWindow().getDecorView(), false);
        this.h = this.a(this.h, view2);
        view2.findViewById(R.id.back_view).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                UGCMainActivity.this.h();
            }
        });
        this.i = this.getString(R.string.ugc_all);
        this.j = (RecyclerView) view2.findViewById(R.id.ugc_filter_list);
        this.j.setLayoutManager(new D(this));
        this.k = new ViewHolder(this, new UgcFilterRoot.FilterGroup[0]);
        this.j.setAdapter(this.k);
        this.h.setOnDismissListener(new PopupWindow.OnDismissListener() {
            @Override
            public void onDismiss() {
                UGCMainActivity.this.e("筛选");
            }
        });
        this.a(R.string.ugc_list, "筛选", R.drawable.ic_action_overflow, new ActionBarClickListener() {
            @Override
            public void onTextClick() {
                if (UGCMainActivity.this.h != null && !UGCMainActivity.this.h.isShowing()) {
                    TextView textView = (TextView) UGCMainActivity.this.getActionBar().getCustomView().findViewById(R.id.actionbar_custom_right_text);
                    UGCMainActivity.this.h.showAsDropDown(textView);
                }
                UGCMainActivity.this.e("收起");
            }

            @Override
            public void onIconClick() {
                if (UGCMainActivity.this.g != null && !UGCMainActivity.this.g.isShowing()) {
                    if (UGCMainActivity.this.f == null || !UGCMainActivity.this.f.isShowing()) {
                        UGCMainActivity.this.f = new PopupWindow(UGCMainActivity.this.getLayoutInflater().inflate(R.layout.home_menu_bg_popup, (ViewGroup) UGCMainActivity.this.getWindow().getDecorView(), false), -1, CommonUtil.getWindowHeight(UGCMainActivity.this));
                        UGCMainActivity.this.f.setAnimationStyle(R.style.home_menu_bg_anim);
                        UGCMainActivity.this.f.showAtLocation(UGCMainActivity.this.getActionBar().getCustomView(), 0, 0, 0);
                    }
                    View view = UGCMainActivity.this.getActionBar().getCustomView().findViewById(R.id.actionbar_custom_right_icon);
                    UGCMainActivity.this.g.setAnimationStyle(R.style.home_menu_anim);
                    UGCMainActivity.this.g.showAsDropDown(view);
                }
            }
        });
        this.a = (TabHost) this.findViewById(R.id.host);
        this.c = (ViewPager) this.findViewById(R.id.pager);
        this.e = new UgcMainAdapter(this.getSupportFragmentManager());
        this.c.setOffscreenPageLimit(3);
        this.c.setAdapter(this.e);
        this.c.setOnPageChangeListener(this);
        this.a.setup();
        this.a.setOnTabChangedListener(this);
        if (this.a.getTabWidget().getTabCount() > 0) {
            this.a.setCurrentTab(0);
            this.a.clearAllTabs();
        }
        LayoutInflater layoutInflater = this.getLayoutInflater();
        int n = this.e.getCount();
        for (int k = 0; k < n; ++k) {
            TabHost.TabSpec tabSpec = this.a.newTabSpec("tab" + k);
            tabSpec.setContent(this);
            View view3 = layoutInflater.inflate(R.layout.home_tabhost_item, (ViewGroup) getWindow().getDecorView(), false);
            ((TextView) view3.findViewById(R.id.text)).setText(this.e.getPageTitle(k));
            tabSpec.setIndicator(view3);
            this.a.addTab(tabSpec);
        }
        new BaseAsyncTask<Void, Void, UgcFilterRoot>() {

            @Override
            protected UgcFilterRoot doInBackground(Void... params) {
                return ApiServiceProvider.getApiService().getUgcFilterRoot();
            }

            @Override
            protected void onPostExecute(UgcFilterRoot ugcFilterRoot) {
                super.onPostExecute(ugcFilterRoot);
                if (ugcFilterRoot != null && ugcFilterRoot.isOk() && ugcFilterRoot.getData() != null) {
                    UGCMainActivity.this.k = new ViewHolder(UGCMainActivity.this, ugcFilterRoot.getData());
                    UGCMainActivity.this.j.setLayoutManager(new D(UGCMainActivity.this));
                    UGCMainActivity.this.j.setAdapter(UGCMainActivity.this.k);
                }
            }
        }.b();
    }

    @Override
    public void onPageScrollStateChanged(int n) {
    }

    @Override
    public void onPageScrolled(int n, float f2, int n2) {
        this.a(n, n2);
    }

    @Override
    public void onPageSelected(int n) {
        TabWidget tabWidget = this.a.getTabWidget();
        int n2 = tabWidget.getDescendantFocusability();
        tabWidget.setDescendantFocusability(ViewGroup.FOCUS_BLOCK_DESCENDANTS);
        this.a.setCurrentTab(n);
        tabWidget.setDescendantFocusability(n2);
    }

    @Override
    public void onPause() {
        super.onPause();
        this.f();
    }

    @Override
    public void onTabChanged(String string) {
        int n = this.a.getCurrentTab();
        if (n >= 0 && n < this.e.getCount()) {
            this.c.setCurrentItem(n, true);
        }
    }

    final class UgcMainAdapter extends BasePagerAdapter {
        private String[] a = new String[]{"ugcTag0", "ugcTag1", "ugcTag2"};

        public UgcMainAdapter(FragmentManager fragmentManager) {
            super(fragmentManager);
            UGCMainActivity.this.b.add(0, UGCMainActivity.this.a(this.a[0], "collectorCount", "last-seven-days"));
            UGCMainActivity.this.b.add(1, UGCMainActivity.this.a(this.a[1], "created", "all"));
            UGCMainActivity.this.b.add(2, UGCMainActivity.this.a(this.a[2], "collectorCount", "all"));
            FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
            for (int i = 0; i < 3; ++i) {
                Fragment fragment = UGCMainActivity.this.b.get(i);
                if (fragment.isAdded()) continue;
                fragmentTransaction.add(UGCMainActivity.this.c.getId(), fragment, this.a[i]);
            }
            if (!fragmentTransaction.isEmpty()) {
                fragmentTransaction.commit();
                fragmentManager.executePendingTransactions();
            }
        }

        @Override
        public final Fragment getFragment(int position) {
            return UGCMainActivity.this.b.get(position);
        }

        @Override
        protected final String getTag(int position) {
            return this.a[position];
        }

        @Override
        public final int getCount() {
            return 3;
        }

        @Override
        public final CharSequence getPageTitle(int n) {
            return UGCMainActivity.this.getResources().getStringArray(R.array.ucg_book_tabs)[n];
        }
    }

    final class ViewHolder extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
        boolean a = false;
        LayoutInflater b;
        private UgcFilterRoot.FilterGroup[] d;

        public ViewHolder(Context context, UgcFilterRoot.FilterGroup[] arrfilterGroup) {
            this.b = LayoutInflater.from(context);
            this.d = arrfilterGroup;
        }

        @Override
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
            switch (viewType) {
                case 0:
                    return new an(this.b.inflate(R.layout.ugc_all_list_item, parent, false));
                case 1:
                    return new al(this.b.inflate(R.layout.ugc_group_list_item, parent, false));
                default:
                    return null;
            }
        }

        @Override
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int position) {
            if (position == 0 && this.a) {
                String string;
                an an2 = (an) holder;
                an2.j = string = UGCMainActivity.this.getString(R.string.ugc_all);
                if (UGCMainActivity.this.i.equals(string)) {
                    an2.i.setTextColor(CommonUtil.getAttrColor(UGCMainActivity.this, R.attr.backgroundNormal));
                    an2.i.setBackgroundResource(CommonUtil.getAttrResource(UGCMainActivity.this, R.attr.redRoundBg));
                    return;
                }
                an2.i.setTextColor(CommonUtil.getAttrColor(UGCMainActivity.this, android.R.attr.textColorSecondary));
                an2.i.setBackgroundResource(CommonUtil.getAttrResource(UGCMainActivity.this, R.attr.backgroundSelector));
                return;
            }
            final al al2 = (al) holder;
            UgcFilterRoot.FilterGroup[] arrugcFilterRoot$FilterGroup = this.d;
            int n2 = this.a ? 1 : 0;
            UgcFilterRoot.FilterGroup ugcFilterRoot$FilterGroup = arrugcFilterRoot$FilterGroup[position - n2];
            if (ugcFilterRoot$FilterGroup == null) return;
            al2.i.setText(ugcFilterRoot$FilterGroup.getName());
            int n3 = (-1 + (4 + ugcFilterRoot$FilterGroup.getTags().length)) / 4;
            String[] arrstring = ugcFilterRoot$FilterGroup.getTags();
            al2.j.removeAllViews();
            int n4 = 0;
            while (n4 < n3) {
                ViewGroup viewGroup = (ViewGroup) ViewHolder.this.b.inflate(R.layout.ugc_group_row, al2.j, false);
                for (int i = 0; i < Math.min(4, arrstring.length - (n4 << 2)); ++i) {
                    UgcFilterTextView ugcFilterTextView = (UgcFilterTextView) viewGroup.getChildAt(i);
                    final String string = arrstring[i + (n4 << 2)];
                    ugcFilterTextView.setVisibility(View.VISIBLE);
                    ugcFilterTextView.setText(string);
                    ugcFilterTextView.setSelected(UGCMainActivity.this.i.equals(ugcFilterTextView.a()));
                    ugcFilterTextView.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public void onClick(View v) {
                            ViewHolder.this.a = true;
                            UGCMainActivity.a(UGCMainActivity.this, string);
                            ViewHolder.this.notifyItemChanged(0);
                        }
                    });
                }
                if (arrstring.length - (n4 << 2) < 4) {
                    for (int j = arrstring.length - (n4 << 2); j < 4; ++j) {
                        viewGroup.getChildAt(j).setVisibility(View.INVISIBLE);
                    }
                }
                al2.j.addView(viewGroup);
                ++n4;
            }
        }

        @Override
        public int getItemViewType(int position) {
            if (position == 0 && this.a) {
                return 0;
            } else {
                return 1;
            }
        }

        @Override
        public int getItemCount() {
            if (this.a) {
                return 1 + this.d.length;
            } else {
                return this.d.length;
            }
        }

        public final class al extends RecyclerView.ViewHolder {
            TextView i;
            TableLayout j;

            public al(View itemView) {
                super(itemView);
                this.i = (TextView) itemView.findViewById(R.id.group_name);
                this.j = (TableLayout) itemView.findViewById(R.id.group_container);
            }
        }

        public final class an extends RecyclerView.ViewHolder {
            TextView i;
            String j;

            public an(View itemView) {
                super(itemView);
                this.i = (TextView) itemView.findViewById(R.id.ugc_filter_name);
                itemView.findViewById(R.id.ugc_all_layout);
                itemView.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        if (an.this.j == null) {
                            return;
                        }
                        ViewHolder.this.a = false;
                        UGCMainActivity.a(UGCMainActivity.this, an.this.j);
                        ViewHolder.this.notifyItemChanged(0);
                    }
                });
            }
        }
    }

    public class D extends LinearLayoutManager {
        private int[] d = new int[2];

        public D(Context context) {
            super(context);
        }

        @Override
        public void onMeasure(RecyclerView.Recycler recycler, RecyclerView.State state, int widthSpec, int heightSpec) {
            int i = View.MeasureSpec.getMode(widthSpec);
            int j = View.MeasureSpec.getMode(heightSpec);
            int k = View.MeasureSpec.getSize(widthSpec);
            int m = View.MeasureSpec.getSize(heightSpec);
            int n = 0;
            int i1 = 0;
            for (int i2 = 0; i2 < this.getChildCount(); i2++) {
                int i3 = View.MeasureSpec.makeMeasureSpec(i2, View.MeasureSpec.UNSPECIFIED);
                int i4 = View.MeasureSpec.makeMeasureSpec(i2, View.MeasureSpec.UNSPECIFIED);
                int[] arrayOfInt = this.d;
                View localView = recycler.getViewForPosition(0);
                if (localView != null) {
                    RecyclerView.LayoutParams localap = (RecyclerView.LayoutParams) localView.getLayoutParams();
                    localView.measure(ViewGroup.getChildMeasureSpec(i3, this.getPaddingLeft() + this.getPaddingRight(), localap.width), ViewGroup.getChildMeasureSpec(i4, getPaddingTop() + getPaddingBottom(), localap.height));
                    arrayOfInt[0] = (localView.getMeasuredWidth() + localap.leftMargin + localap.rightMargin);
                    arrayOfInt[1] = (localView.getMeasuredHeight() + localap.bottomMargin + localap.topMargin);
                    recycler.recycleView(localView);
                }
                if (getOrientation() == HORIZONTAL) {
                    n += this.d[0];
                    if (i2 == 0) {
                        i1 = this.d[1];
                        i2++;
                    }
                } else {
                    i1 += this.d[1];
                    if (i2 == 0) {
                        n = this.d[0];
                    }
                }
            }
            if (i == View.MeasureSpec.EXACTLY) {
                n = k;
            }
            if (j == View.MeasureSpec.EXACTLY) {
                i1 = m;
            }
            setMeasuredDimension(n, i1);
        }
    }
}
