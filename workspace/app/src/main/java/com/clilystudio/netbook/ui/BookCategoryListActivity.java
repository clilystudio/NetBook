package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager$OnPageChangeListener;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TabHost;
import android.widget.TabWidget;
import android.widget.TextView;

import com.clilystudio.netbook.d;
import com.clilystudio.netbook.model.CategoryLevelRoot;
import com.clilystudio.netbook.model.CategoryLevelRoot$CategoryLevel;

import java.util.ArrayList;
import java.util.List;

public class BookCategoryListActivity extends BaseTabActivity
        implements ViewPager$OnPageChangeListener,
        TabHost.OnTabChangeListener,
        TabHost.TabContentFactory {
    private boolean b;
    private String c;
    private String e;
    private PopupWindow f;
    private aw g;
    private boolean h;
    private String[] i;
    private List<BookCategoryFragment> j = new ArrayList<BookCategoryFragment>();
    private ViewPager k;
    private av l;

    public static Intent a(Context context, boolean bl, String string) {
        return new d().a(context, BookCategoryListActivity.class).a("CATEGORY_GENDER", Boolean.valueOf(bl)).a("CATEGORY_KEY", string).a();
    }

    static /* synthetic */ void a(BookCategoryListActivity bookCategoryListActivity) {
        if (bookCategoryListActivity.f != null && bookCategoryListActivity.f.isShowing()) {
            bookCategoryListActivity.i();
            return;
        }
        if (bookCategoryListActivity.f != null && !bookCategoryListActivity.f.isShowing()) {
            TextView textView = (TextView) bookCategoryListActivity.a().a().findViewById(2131493008);
            bookCategoryListActivity.f.showAsDropDown(textView);
        }
        b.a(bookCategoryListActivity, "book_category_filter_click");
        bookCategoryListActivity.e("\u6536\u8d77");
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
            String string2 = bookCategoryListActivity.b ? "\u7537\u751f - " : "\u5973\u751f - ";
            if (string.equals(bookCategoryListActivity.c)) {
                a.p(bookCategoryListActivity, string2 + string);
            } else {
                b.a(bookCategoryListActivity, "book_category_minor_click", string2 + bookCategoryListActivity.c + " - " + string);
            }
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
        CategoryLevelRoot$CategoryLevel[] arrcategoryLevelRoot$CategoryLevel = this.b ? categoryLevelRoot.getMale() : categoryLevelRoot.getFemale();
        int n = arrcategoryLevelRoot$CategoryLevel.length;
        int n2 = 0;
        while (n2 < n) {
            CategoryLevelRoot$CategoryLevel categoryLevelRoot$CategoryLevel = arrcategoryLevelRoot$CategoryLevel[n2];
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
            View view = layoutInflater.inflate(2130903229, null);
            ((TextView) view.findViewById(2131493509)).setText((String) this.l.getPageTitle(k));
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

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903085);
        this.b = this.getIntent().getBooleanExtra("CATEGORY_GENDER", false);
        this.e = this.c = this.getIntent().getStringExtra("CATEGORY_KEY");
        this.i = this.getResources().getStringArray(2131361793);
        View view = LayoutInflater.from(this).inflate(2130903175, null);
        PopupWindow popupWindow = new PopupWindow(view, -1, -1);
        popupWindow.setFocusable(true);
        popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        popupWindow.setOutsideTouchable(true);
        popupWindow.setOnDismissListener((PopupWindow.OnDismissListener) ((Object) new au(this)));
        this.f = popupWindow;
        String[] arrstring = new String[]{};
        CategoryLevelRoot categoryLevelRoot = (CategoryLevelRoot) a.k(c.f, "category_level.txt");
        String[] arrstring2 = categoryLevelRoot != null ? this.a(categoryLevelRoot) : arrstring;
        String[] arrstring3 = new String[1 + arrstring2.length];
        arrstring3[0] = this.c;
        for (int k = 0; k < arrstring2.length; ++k) {
            arrstring3[k + 1] = arrstring2[k];
        }
        int n = arrstring3.length;
        boolean bl = false;
        if (n == 1) {
            bl = true;
        }
        this.h = bl;
        view.findViewById(2131493373).setOnClickListener((View.OnClickListener) ((Object) new as(this)));
        ListView listView = (ListView) view.findViewById(2131493374);
        this.g = new aw(this, (Context) this, arrstring3);
        listView.setAdapter((ListAdapter) ((Object) this.g));
        listView.setOnItemClickListener(new at(this, arrstring3));
        if (this.h) {
            this.b(this.c);
        } else {
            this.a(this.c, "\u7b5b\u9009", (aa) ((Object) new ar(this)));
        }
        this.a = (TabHost) this.findViewById(2131493096);
        this.k = (ViewPager) this.findViewById(2131493097);
        this.l = new av(this, this.getSupportFragmentManager());
        this.k.setOffscreenPageLimit(4);
        this.k.setAdapter((PagerAdapter) ((Object) this.l));
        this.k.setOnPageChangeListener(this);
        this.a.setup();
        this.a.setOnTabChangedListener(this);
        this.h();
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
        tabWidget.setDescendantFocusability(393216);
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
            b.a(this, "book_category_tab_click", this.i[n]);
        }
    }
}
