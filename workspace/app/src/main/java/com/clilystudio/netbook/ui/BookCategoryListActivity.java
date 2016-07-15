package com.clilystudio.netbook.ui;

import android.app.ActionBar;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TabHost;
import android.widget.TabWidget;
import android.widget.TextView;

import com.clilystudio.netbook.CachePathConst;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.util.CommonUtil;
import com.clilystudio.netbook.IntentBuilder;
import com.clilystudio.netbook.model.CategoryLevelRoot;
import com.clilystudio.netbook.ui.home.ZssqFragmentPagerAdapter;

import java.util.ArrayList;
import java.util.List;

public class BookCategoryListActivity extends BaseTabActivity implements ViewPager.OnPageChangeListener,
        TabHost.OnTabChangeListener,
        TabHost.TabContentFactory {
    private boolean b;
    private String c;
    private String e;
    private PopupWindow f;
    private aw g;
    private boolean h;
    private String[] i;
    private List<BookCategoryFragment> j = new ArrayList<>();
    private ViewPager k;
    private avAdapter l;

    public static Intent a(Context context, boolean bl, String string) {
        return new IntentBuilder().put(context, BookCategoryListActivity.class).putSerializable("CATEGORY_GENDER", bl).put("CATEGORY_KEY", string).build();
    }

    static /* synthetic */ void a(BookCategoryListActivity bookCategoryListActivity) {
        if (bookCategoryListActivity.f != null && bookCategoryListActivity.f.isShowing()) {
            bookCategoryListActivity.i();
            return;
        }
        if (bookCategoryListActivity.f != null && !bookCategoryListActivity.f.isShowing()) {
            ActionBar actionBar = bookCategoryListActivity.getActionBar();
            if (actionBar != null) {
                View customView = actionBar.getCustomView();
                TextView textView = (TextView) customView.findViewById(R.id.actionbar_custom_right_text);
                bookCategoryListActivity.f.showAsDropDown(textView);
            }
        }
        bookCategoryListActivity.e("收起");
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void a(BookCategoryListActivity bookCategoryListActivity, String string) {
        if (!bookCategoryListActivity.e.equals(string)) {
            bookCategoryListActivity.e = string;
            bookCategoryListActivity.d(string);
            bookCategoryListActivity.g.notifyDataSetChanged();
            bookCategoryListActivity.j.get(bookCategoryListActivity.k.getCurrentItem()).a();
            bookCategoryListActivity.j.get(bookCategoryListActivity.k.getCurrentItem()).b(bookCategoryListActivity.g());
        }
        bookCategoryListActivity.i();
    }

    static /* synthetic */ List b(BookCategoryListActivity bookCategoryListActivity) {
        return bookCategoryListActivity.j;
    }

    static /* synthetic */ ViewPager c(BookCategoryListActivity bookCategoryListActivity) {
        return bookCategoryListActivity.k;
    }

    static /* synthetic */ String[] d(BookCategoryListActivity bookCategoryListActivity) {
        return bookCategoryListActivity.i;
    }

    static /* synthetic */ void e(BookCategoryListActivity bookCategoryListActivity) {
        bookCategoryListActivity.i();
    }

    static /* synthetic */ String f(BookCategoryListActivity bookCategoryListActivity) {
        return bookCategoryListActivity.e;
    }

    /*
     * Enabled aggressive block sorting
     */
    private String[] a(CategoryLevelRoot categoryLevelRoot) {
        CategoryLevelRoot.CategoryLevel[] arrcategoryLevelRoot$CategoryLevel = this.b ? categoryLevelRoot.getMale() : categoryLevelRoot.getFemale();
        int n = arrcategoryLevelRoot$CategoryLevel.length;
        int n2 = 0;
        while (n2 < n) {
            CategoryLevelRoot.CategoryLevel categoryLevelRoot$CategoryLevel = arrcategoryLevelRoot$CategoryLevel[n2];
            if (categoryLevelRoot$CategoryLevel.getMajor().equals(this.c)) {
                return categoryLevelRoot$CategoryLevel.getMins();
            }
            ++n2;
        }
        return new String[0];
    }

    private void h() {
        if (this.a.getTabWidget().getTabCount() > 0) {
            this.a.setCurrentTab(0);
            this.a.clearAllTabs();
        }
        LayoutInflater layoutInflater = this.getLayoutInflater();
        int n = this.l.getCount();
        for (int k = 0; k < n; ++k) {
            TabHost.TabSpec tabSpec = this.a.newTabSpec("tab" + k);
            tabSpec.setContent(this);
            View view = layoutInflater.inflate(R.layout.home_tabhost_item, (ViewGroup) getWindow().getDecorView(), false);
            ((TextView) view.findViewById(R.id.text)).setText(this.l.getPageTitle(k));
            tabSpec.setIndicator(view);
            this.a.addTab(tabSpec);
        }
    }

    private void i() {
        if (this.f != null && this.f.isShowing()) {
            this.f.dismiss();
        }
        this.e("\u7b5b\u9009");
    }

    public final BookCategoryFragment a(String string) {
        BookCategoryFragment bookCategoryFragment = (BookCategoryFragment) this.getSupportFragmentManager().findFragmentByTag(string);
        if (bookCategoryFragment == null) {
            bookCategoryFragment = BookCategoryFragment.a(string);
        }
        return bookCategoryFragment;
    }

    public final String b() {
        if (this.b) {
            return "male";
        }
        return "female";
    }

    @Override
    public View createTabContent(String string) {
        View view = new View(this);
        view.setMinimumHeight(0);
        view.setMinimumWidth(0);
        return view;
    }

    public final String f() {
        return this.c;
    }

    public final String g() {
        if (this.e.equals(this.c)) {
            return "";
        }
        return this.e;
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_book_category_tabhost);
        this.b = this.getIntent().getBooleanExtra("CATEGORY_GENDER", false);
        this.e = this.c = this.getIntent().getStringExtra("CATEGORY_KEY");
        this.i = this.getResources().getStringArray(R.array.book_category_tabs);
        View view = LayoutInflater.from(this).inflate(R.layout.category_level_popupwindow, (ViewGroup) getWindow().getDecorView(), false);
        PopupWindow popupWindow = new PopupWindow(view, -1, -1);
        popupWindow.setFocusable(true);
        popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        popupWindow.setOutsideTouchable(true);
        popupWindow.setOnDismissListener(new PopupWindow.OnDismissListener() {
            @Override
            public void onDismiss() {
                BookCategoryListActivity.this.e("筛选");
            }
        });
        this.f = popupWindow;
        String[] arrstring = new String[]{};
        CategoryLevelRoot categoryLevelRoot = com.clilystudio.netbook.util.a.k(CachePathConst.CategoryLevel, "category_level.txt");
        String[] arrstring2 = categoryLevelRoot != null ? this.a(categoryLevelRoot) : arrstring;
        final String[] arrstring3 = new String[1 + arrstring2.length];
        arrstring3[0] = this.c;
        System.arraycopy(arrstring2, 0, arrstring3, 1, arrstring2.length);
        final int n = arrstring3.length;
        boolean bl = false;
        if (n == 1) {
            bl = true;
        }
        this.h = bl;
        view.findViewById(R.id.back_view).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                BookCategoryListActivity.e(BookCategoryListActivity.this);
            }
        });
        ListView listView = (ListView) view.findViewById(R.id.min_category_list);
        this.g = new aw(this, this, arrstring3);
        listView.setAdapter(this.g);
        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                BookCategoryListActivity.a(BookCategoryListActivity.this, arrstring3[position]);
            }
        });
        if (this.h) {
            this.b(this.c);
        } else {
            this.a(this.c, "筛选", new BaseCallBack() {
                @Override
                public void a() {
                    BookCategoryListActivity.a(BookCategoryListActivity.this);
                }
            });
        }
        this.a = (TabHost) this.findViewById(R.id.host);
        this.k = (ViewPager) this.findViewById(R.id.pager);
        this.l = new avAdapter(this.getSupportFragmentManager());
        this.k.setOffscreenPageLimit(4);
        this.k.setAdapter(this.l);
        this.k.addOnPageChangeListener(this);
        this.a.setup();
        this.a.setOnTabChangedListener(this);
        this.h();
    }

    @Override
    protected void onDestroy() {
        this.k.removeOnPageChangeListener(this);
        super.onDestroy();
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
        if (!this.h) {
            this.i();
        }
    }

    @Override
    public void onTabChanged(String string) {
        int n = this.a.getCurrentTab();
        if (n >= 0 && n < this.l.getCount()) {
            this.k.setCurrentItem(n, true);
        }
    }

    final class avAdapter extends ZssqFragmentPagerAdapter {
        private String[] a;

        public avAdapter(FragmentManager fragmentManager) {
            super(fragmentManager);
            this.a = new String[]{"new", "hot", "reputation", "over"};
            BookCategoryListActivity.this.j.add(0, BookCategoryListActivity.this.a(this.a[0]));
            BookCategoryListActivity.this.j.add(1, BookCategoryListActivity.this.a(this.a[1]));
            BookCategoryListActivity.this.j.add(2, BookCategoryListActivity.this.a(this.a[2]));
            BookCategoryListActivity.this.j.add(3, BookCategoryListActivity.this.a(this.a[3]));
            FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
            for (int i = 0; i < 4; ++i) {
                Fragment fragment = BookCategoryListActivity.this.j.get(i);
                if (fragment.isAdded()) continue;
                fragmentTransaction.add(BookCategoryListActivity.this.k.getId(), fragment, this.a[i]);
            }
            if (!fragmentTransaction.isEmpty()) {
                fragmentTransaction.commit();
                fragmentManager.executePendingTransactions();
            }
        }

        @Override
        public final Fragment a(int n) {
            return BookCategoryListActivity.this.j.get(n);
        }

        @Override
        protected final String b(int n) {
            return this.a[n];
        }

        @Override
        public final int getCount() {
            return 4;
        }

        @Override
        public final CharSequence getPageTitle(int n) {
            return BookCategoryListActivity.this.i[n];
        }
    }

    public final class aw extends BaseAdapter {
        private LayoutInflater a;
        private String[] b;
        private /* synthetic */ BookCategoryListActivity c;

        public aw(BookCategoryListActivity bookCategoryListActivity, Context context, String[] arrstring) {
            this.c = bookCategoryListActivity;
            this.a = LayoutInflater.from(context);
            this.b = arrstring;
        }

        @Override
        public final int getCount() {
            return this.b.length;
        }

        @Override
        public final Object getItem(int n) {
            return this.b[n];
        }

        @Override
        public final long getItemId(int n) {
            return n;
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public final View getView(int n, View view, ViewGroup viewGroup) {
            ax ax2;
            View view2;
            if (view == null) {
                ax ax3 = new ax();
                view2 = n == 0 ? this.a.inflate(R.layout.category_major_list_item, (ViewGroup)getWindow().getDecorView(), false) : this.a.inflate(R.layout.category_level_list_item, (ViewGroup)getWindow().getDecorView(), false);
                ax3.a = (TextView) view2.findViewById(R.id.category_name);
                ax3.b = (ImageView) view2.findViewById(R.id.category_selected);
                view2.setTag(ax3);
                ax2 = ax3;
            } else {
                ax2 = (ax) view.getTag();
                view2 = view;
            }
            ax2.a.setText(this.b[n]);
            if (BookCategoryListActivity.f(this.c).equals(this.b[n])) {
                ax2.a.setTextColor(this.c.getResources().getColor(R.color.primary_red));
                ax2.b.setVisibility(View.VISIBLE);
                return view2;
            }
            ax2.a.setTextColor(CommonUtil.a(this.c, 16842904));
            ax2.b.setVisibility(View.GONE);
            return view2;
        }

        public final class ax {
            TextView a;
            ImageView b;
        }
    }
}
