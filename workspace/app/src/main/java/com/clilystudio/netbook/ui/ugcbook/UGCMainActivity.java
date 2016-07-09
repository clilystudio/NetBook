package com.clilystudio.netbook.ui.ugcbook;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.ViewPager;
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
import com.clilystudio.netbook.am;
import com.clilystudio.netbook.model.UgcFilterRoot;
import com.clilystudio.netbook.ui.BaseTabActivity;
import com.clilystudio.netbook.ui.home.ZssqFragmentPagerAdapter;
import com.clilystudio.netbook.ui.user.UserUGCActivity;
import com.clilystudio.netbook.util.D;
import com.clilystudio.netbook.widget.UgcFilterTextView;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

import java.util.ArrayList;
import java.util.List;

public class UGCMainActivity extends BaseTabActivity implements ViewPager.OnPageChangeListener,
        TabHost.OnTabChangeListener,
        TabHost.TabContentFactory {
    private List<UGCMainListFragment> b = new ArrayList<>();
    private ViewPager c;
    private aj e;
    private PopupWindow f;
    private PopupWindow g;
    private PopupWindow h;
    private String i;
    private RecyclerView j;
    private ak k;

    static /* synthetic */ ak a(UGCMainActivity uGCMainActivity, ak ak2) {
        uGCMainActivity.k = ak2;
        return ak2;
    }

    static /* synthetic */ void a(UGCMainActivity uGCMainActivity) {
        if (uGCMainActivity.h != null && !uGCMainActivity.h.isShowing()) {
            TextView textView = (TextView) uGCMainActivity.getActionBar().getCustomView().findViewById(R.id.actionbar_custom_right_text);
            uGCMainActivity.h.showAsDropDown(textView);
        }
        uGCMainActivity.e("\u6536\u8d77");
    }

    static /* synthetic */ void a(UGCMainActivity uGCMainActivity, String string) {
        MiStatInterface.recordCountEvent("ugc_filter", string);
        if (!uGCMainActivity.i.equals(string)) {
            uGCMainActivity.i = string;
            uGCMainActivity.d(string);
            uGCMainActivity.k.notifyDataSetChanged();
            uGCMainActivity.b.get(uGCMainActivity.c.getCurrentItem()).a();
            uGCMainActivity.b.get(uGCMainActivity.c.getCurrentItem()).a(uGCMainActivity.i);
        }
        uGCMainActivity.h();
    }

    static /* synthetic */ void b(UGCMainActivity uGCMainActivity) {
        if (uGCMainActivity.g != null && !uGCMainActivity.g.isShowing()) {
            if (uGCMainActivity.f == null || !uGCMainActivity.f.isShowing()) {
                uGCMainActivity.f = new PopupWindow(uGCMainActivity.getLayoutInflater().inflate(R.layout.home_menu_bg_popup, (ViewGroup)uGCMainActivity.getWindow().getDecorView(), false), -1, com.clilystudio.netbook.hpay100.a.a.L(uGCMainActivity));
                uGCMainActivity.f.setAnimationStyle(R.style.home_menu_bg_anim);
                uGCMainActivity.f.showAtLocation(uGCMainActivity.getActionBar().getCustomView(), 0, 0, 0);
            }
            View view = uGCMainActivity.getActionBar().getCustomView().findViewById(R.id.actionbar_custom_right_icon);
            uGCMainActivity.g.setAnimationStyle(R.style.home_menu_anim);
            uGCMainActivity.g.showAsDropDown(view);
        }
    }

    static /* synthetic */ RecyclerView c(UGCMainActivity uGCMainActivity) {
        return uGCMainActivity.j;
    }

    static /* synthetic */ ak d(UGCMainActivity uGCMainActivity) {
        return uGCMainActivity.k;
    }

    static /* synthetic */ List e(UGCMainActivity uGCMainActivity) {
        return uGCMainActivity.b;
    }

    static /* synthetic */ ViewPager f(UGCMainActivity uGCMainActivity) {
        return uGCMainActivity.c;
    }

    static /* synthetic */ void g(UGCMainActivity uGCMainActivity) {
        uGCMainActivity.g();
    }

    static /* synthetic */ void h(UGCMainActivity uGCMainActivity) {
        uGCMainActivity.f();
    }

    static /* synthetic */ void i(UGCMainActivity uGCMainActivity) {
        uGCMainActivity.h();
    }

    static /* synthetic */ String j(UGCMainActivity uGCMainActivity) {
        return uGCMainActivity.i;
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
                        UGCMainActivity.h(UGCMainActivity.this);
                        return true;
                    }
                    return false;
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
        View view = this.getLayoutInflater().inflate(R.layout.ugc_popupwindow_layout, (ViewGroup)getWindow().getDecorView(), false);
        this.g = this.a(this.g, view);
        this.g.setOnDismissListener(new PopupWindow.OnDismissListener() {
            @Override
            public void onDismiss() {
                UGCMainActivity.g(UGCMainActivity.this);
            }
        });
        view.findViewById(R.id.create_ugc).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (com.clilystudio.netbook.am.a(UGCMainActivity.this) != null) {
                    MiStatInterface.recordCountEvent("ugc_create", null);
                    Intent intent = new Intent(UGCMainActivity.this, UGCGuideAddCollectionActivity.class);
                    UGCMainActivity.this.startActivity(intent);
                    UGCMainActivity.h(UGCMainActivity.this);
                }
            }
        });
        view.findViewById(R.id.my_ugc).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (am.a(UGCMainActivity.this) != null) {
                    MiStatInterface.recordCountEvent("ugc_my_own", null);
                    Intent intent = new Intent(UGCMainActivity.this, UserUGCActivity.class);
                    UGCMainActivity.this.startActivity(intent);
                    UGCMainActivity.h(UGCMainActivity.this);
                }
            }
        });
        view.findViewById(R.id.back_view).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                UGCMainActivity.h(UGCMainActivity.this);
            }
        });
        View view2 = LayoutInflater.from(this).inflate(R.layout.ugc_filter_popupwindow, (ViewGroup)getWindow().getDecorView(), false);
        this.h = this.a(this.h, view2);
        view2.findViewById(R.id.back_view).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                UGCMainActivity.i(UGCMainActivity.this);
            }
        });
        this.i = this.getString(R.string.ugc_all);
        this.j = (RecyclerView) view2.findViewById(R.id.ugc_filter_list);
        this.j.setLayoutManager(new D(this));
        this.k = new ak(this, this, new UgcFilterRoot.FilterGroup[0]);
        this.j.setAdapter(this.k);
        this.h.setOnDismissListener(new PopupWindow.OnDismissListener() {
            @Override
            public void onDismiss() {
                UGCMainActivity.this.e("筛选");
            }
        });
        this.a(R.string.ugc_list, "筛选", R.drawable.ic_action_overflow, new com.clilystudio.netbook.ui.ab() {
            @Override
            public void a() {
                UGCMainActivity.a(UGCMainActivity.this);
            }

            @Override
            public void b() {
                UGCMainActivity.b(UGCMainActivity.this);
            }
        });
        this.a = (TabHost) this.findViewById(R.id.host);
        this.c = (ViewPager) this.findViewById(R.id.pager);
        this.e = new aj(this, this.getSupportFragmentManager());
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
            View view3 = layoutInflater.inflate(R.layout.home_tabhost_item, (ViewGroup)getWindow().getDecorView(), false);
            ((TextView) view3.findViewById(R.id.text)).setText(this.e.getPageTitle(k));
            tabSpec.setIndicator(view3);
            this.a.addTab(tabSpec);
        }
        new BaseAsyncTask<Void, Void, UgcFilterRoot>() {

            @Override
            protected UgcFilterRoot doInBackground(Void... params) {
                return com.clilystudio.netbook.api.b.b().o();
            }

            @Override
            protected void onPostExecute(UgcFilterRoot ugcFilterRoot) {
                super.onPostExecute(ugcFilterRoot);
                if (ugcFilterRoot != null && ugcFilterRoot.isOk() && ugcFilterRoot.getData() != null) {
                    UGCMainActivity.a(UGCMainActivity.this, new ak(UGCMainActivity.this, UGCMainActivity.this, ugcFilterRoot.getData()));
                    UGCMainActivity.c(UGCMainActivity.this).setLayoutManager(new D(UGCMainActivity.this));
                    UGCMainActivity.c(UGCMainActivity.this).setAdapter(UGCMainActivity.d(UGCMainActivity.this));
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

    final class aj extends ZssqFragmentPagerAdapter {
        private String[] a;
        private /* synthetic */ UGCMainActivity b;

        public aj(UGCMainActivity uGCMainActivity, FragmentManager fragmentManager) {
            super(fragmentManager);
            this.b = uGCMainActivity;
            this.a = new String[]{"ugcTag0", "ugcTag1", "ugcTag2"};
            uGCMainActivity.b.add(0, uGCMainActivity.a(this.a[0], "collectorCount", "last-seven-days"));
            uGCMainActivity.b.add(1, uGCMainActivity.a(this.a[1], "created", "all"));
            uGCMainActivity.b.add(2, uGCMainActivity.a(this.a[2], "collectorCount", "all"));
            FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
            for (int i = 0; i < 3; ++i) {
                Fragment fragment = (Fragment) UGCMainActivity.e(uGCMainActivity).get(i);
                if (fragment.isAdded()) continue;
                fragmentTransaction.add(UGCMainActivity.f(uGCMainActivity).getId(), fragment, this.a[i]);
            }
            if (!fragmentTransaction.isEmpty()) {
                fragmentTransaction.commit();
                fragmentManager.executePendingTransactions();
            }
        }

        @Override
        public final Fragment a(int n) {
            return (Fragment) UGCMainActivity.e(this.b).get(n);
        }

        @Override
        protected final String b(int n) {
            return this.a[n];
        }

        @Override
        public final int getCount() {
            return 3;
        }

        @Override
        public final CharSequence getPageTitle(int n) {
            return this.b.getResources().getStringArray(R.array.ucg_book_tabs)[n];
        }
    }

    final class ak extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
        final /* synthetic */ UGCMainActivity c;
        boolean a;
        LayoutInflater b;
        private UgcFilterRoot.FilterGroup[] d;

        public ak(UGCMainActivity uGCMainActivity, Context context, UgcFilterRoot.FilterGroup[] arrfilterGroup) {
            this.c = uGCMainActivity;
            this.a = false;
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
                an2.j = string = this.c.getString(R.string.ugc_all);
                if (UGCMainActivity.j(ak.this.c).equals(string)) {
                    an2.i.setTextColor(com.clilystudio.netbook.am.a(ak.this.c, R.attr.backgroundNormal));
                    an2.i.setBackgroundResource(com.clilystudio.netbook.am.b(ak.this.c, R.attr.redRoundBg));
                    return;
                }
                an2.i.setTextColor(com.clilystudio.netbook.am.a(ak.this.c, 16842808));
                an2.i.setBackgroundResource(com.clilystudio.netbook.am.b(ak.this.c, R.attr.backgroundSelector));
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
                ViewGroup viewGroup = (ViewGroup) ak.this.b.inflate(R.layout.ugc_group_row, al2.j, false);
                for (int i = 0; i < Math.min(4, arrstring.length - (n4 << 2)); ++i) {
                    UgcFilterTextView ugcFilterTextView = (UgcFilterTextView) viewGroup.getChildAt(i);
                    final String string = arrstring[i + (n4 << 2)];
                    ugcFilterTextView.setVisibility(View.VISIBLE);
                    ugcFilterTextView.setText(string);
                    ugcFilterTextView.setSelected(UGCMainActivity.j(ak.this.c).equals(ugcFilterTextView.a()));
                    ugcFilterTextView.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public void onClick(View v) {
                            ak.this.a = true;
                            UGCMainActivity.a(ak.this.c, string);
                            ak.this.notifyItemChanged(0);
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
                        ak.this.a = false;
                        UGCMainActivity.a(ak.this.c, an.this.j);
                        ak.this.notifyItemChanged(0);
                    }
                });
            }
        }
    }
}
