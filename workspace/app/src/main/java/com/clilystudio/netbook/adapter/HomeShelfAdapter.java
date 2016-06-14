package com.clilystudio.netbook.adapter;

import android.app.Activity;
import android.content.Context;
import android.support.design.widget.am;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;

import com.clilystudio.netbook.db.BookDlRecord;
import com.clilystudio.netbook.model.BookShelf;
import com.clilystudio.netbook.util.adutil.n;
import com.clilystudio.netbook.util.t;
import com.clilystudio.netbook.widget.y;

import java.util.ArrayList;
import java.util.List;

public class HomeShelfAdapter extends u<BookShelf> {
    public static boolean a;

    static {
        HomeShelfAdapter.class.getSimpleName();
    }

    private Context b;
    private LayoutInflater c;
    private boolean d = false;
    private List<BookShelf> e;
    private boolean[] f;
    private boolean g = false;
    private Button h;
    private Button i;

    public HomeShelfAdapter(Activity activity) {
        this.b = activity;
        this.c = LayoutInflater.from(this.b);
        this.e = new ArrayList<BookShelf>();
    }

    static /* synthetic */ void a(HomeShelfAdapter homeShelfAdapter, int n) {
        homeShelfAdapter.b(n);
    }

    static /* synthetic */ boolean a(HomeShelfAdapter homeShelfAdapter) {
        return homeShelfAdapter.g;
    }

    static /* synthetic */ boolean[] b(HomeShelfAdapter homeShelfAdapter) {
        return homeShelfAdapter.f;
    }

    static /* synthetic */ Context c(HomeShelfAdapter homeShelfAdapter) {
        return homeShelfAdapter.b;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(int n, CheckBox checkBox) {
        if (this.d) {
            checkBox.setVisibility(View.VISIBLE);
        } else {
            checkBox.setVisibility(View.GONE);
        }
        this.g = true;
        if (this.f.length <= n) {
            boolean[] arrbl = new boolean[n + 1];
            for (int i = 0; i < this.f.length; ++i) {
                arrbl[i] = this.f[i];
            }
            this.f = arrbl;
        }
        checkBox.setChecked(this.f[n]);
        this.b(n);
        this.g = false;
        checkBox.setOnCheckedChangeListener((CompoundButton.OnCheckedChangeListener) ((Object) new q(this, n)));
    }

    /*
     * Enabled aggressive block sorting
     */
    private void b(int n) {
        if (this.f[n]) {
            if (!this.e.contains(this.getItem(n))) {
                this.e.add((BookShelf) this.getItem(n));
            }
        } else {
            this.e.remove(this.getItem(n));
        }
        if (this.e.size() > 0) {
            this.h.setText("\u5220\u9664(" + this.e.size() + ")");
        } else {
            this.h.setText("\u5220\u9664");
        }
        if (this.e.size() == this.g()) {
            this.i.setText("\u53d6\u6d88\u5168\u9009");
            return;
        }
        this.i.setText("\u5168\u9009");
    }

    private int g() {
        int n = 0;
        for (int i = 0; i < this.f.length; ++i) {
            int n2 = this.getItemViewType(i);
            if (n2 != 0 && n2 != 2 && n2 != 4) continue;
            ++n;
        }
        return n;
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void a(int n) {
        boolean[] arrbl = this.f;
        boolean bl = !this.f[n];
        arrbl[n] = bl;
        this.notifyDataSetChanged();
    }

    public final void a(Button button, Button button2) {
        this.h = button;
        this.i = button2;
    }

    @Override
    public final void a(List<BookShelf> list) {
        super.a(list);
        this.f = new boolean[list.size()];
    }

    public final boolean a() {
        return this.d;
    }

    public final void b() {
        this.d = true;
        this.notifyDataSetChanged();
    }

    public final void c() {
        this.d = false;
        for (int i = 0; i < this.f.length; ++i) {
            this.f[i] = false;
        }
        this.e.clear();
        this.notifyDataSetChanged();
    }

    public final void d() {
        boolean[] arrbl = this.f;
        int n = arrbl.length;
        for (int i = 0; i < n; ++i) {
            if (arrbl[i]) continue;
            int n2 = 0;
            do {
                int n3 = this.f.length;
                if (n2 >= n3) break;
                this.f[n2] = true;
                ++n2;
            } while (true);
            for (int j = 0; j < this.f.length; ++j) {
                BookShelf bookShelf = (BookShelf) this.getItem(j);
                int n4 = bookShelf.getType();
                if (n4 != 0 && n4 != 2 && n4 != 4 || this.e.contains(bookShelf)) continue;
                this.e.add(bookShelf);
            }
            this.notifyDataSetChanged();
            return;
        }
        for (int j = 0; j < this.f.length; ++j) {
            this.f[j] = false;
        }
        this.e.clear();
        this.notifyDataSetChanged();
    }

    public final List<BookShelf> e() {
        return this.e;
    }

    @Override
    public int getItemViewType(int n) {
        return ((BookShelf) this.getItem(n)).getType();
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public View getView(int var1_1, View var2_2, ViewGroup var3_3) {
        var4_4 = (BookShelf) this.getItem(var1_1);
        var5_5 = var4_4.getType();
        if (var2_2 != null)**GOTO lbl21
        switch (var5_5) {
            case 1: {
                var2_2 = this.c.inflate(2130903305, var3_3, false);
                **break;
            }
            case 0: {
                var2_2 = this.c.inflate(2130903307, var3_3, false);
                **break;
            }
            case 2: {
                var2_2 = this.c.inflate(2130903310, var3_3, false);
                **break;
            }
            case 3: {
                var2_2 = this.c.inflate(2130903309, var3_3, false);
            }
            lbl16:
            // 5 sources:
            default:
            {
                **GOTO lbl33
            }
            case 4:
        }
        var2_2 = this.c.inflate(2130903306, var3_3, false);
        **GOTO lbl33
        lbl21:
        // 1 sources:
        if (this.d) {
            if (var5_5 == 1 || var5_5 == 3) {
                var2_2 = this.c.inflate(2130903308, var3_3, false);
            }
        } else {
            switch (var5_5) {
                default: {
                    break;
                }
                case 1: {
                    var2_2 = this.c.inflate(2130903305, var3_3, false);
                    break;
                }
                case 3: {
                    var2_2 = this.c.inflate(2130903309, var3_3, false);
                }
            }
        }
        lbl33:
        // 6 sources:
        switch (var5_5) {
            default: {
                return var2_2;
            }
            case 0: {
                var19_6 = new HomeShelfAdapter$BookHolder(var2_2);
                var20_7 = var4_4.getBookRecord();
                var19_6.cover.setImageUrl(var20_7.getFullCover(), 2130837766);
                var19_6.title.setText(var20_7.getTitle());
                var19_6.desc.setText(var20_7.buildDesc());
                if (var20_7.isUnread() && !this.d) {
                    var19_6.flag.setType(3);
                } else {
                    var19_6.flag.setType(0);
                }
                this.a(var1_1, var19_6.check);
                var21_8 = var20_7.isTop() != false ? 0 : 8;
                var19_6.top.setVisibility(var21_8);
                var22_9 = var20_7.getReadMode();
                var23_10 = false;
                if (var22_9 != -1) {
                    var29_11 = var20_7.getDownloadedSource();
                    var30_12 = a.g(var22_9);
                    var23_10 = false;
                    if (var29_11 != null) {
                        var31_13 = var29_11.contains(var30_12);
                        var23_10 = false;
                        if (var31_13) {
                            var23_10 = true;
                        }
                    }
                }
                if (!am.h((String) (var24_14 = var20_7.getBookId()))) {
                    if (var23_10) {
                        var19_6.coverLoadingLayer.f();
                        return var2_2;
                    }
                    var19_6.coverLoadingLayer.c();
                    return var2_2;
                }
                var25_15 = BookDlRecord.get(var24_14);
                if (var25_15 == null) {
                    var19_6.coverLoadingLayer.c();
                    return var2_2;
                }
                var26_16 = var25_15.getProgress();
                var27_17 = var25_15.getTotal();
                if (var27_17 > 0) {
                    var26_16 = 5 + (int) (95.0f * (float) ((int) (100.0f * ((float) var26_16 / (float) var27_17))) / 100.0f);
                }
                if ((var28_18 = var25_15.getStatus()) == 2) {
                    var19_6.coverLoadingLayer.setProgress(var26_16);
                } else if (var28_18 == 3) {
                    var19_6.coverLoadingLayer.b();
                } else if (var28_18 == 1) {
                    var19_6.coverLoadingLayer.d();
                } else if (var28_18 == 5) {
                    var19_6.coverLoadingLayer.e();
                } else if (!var19_6.coverLoadingLayer.g()) {
                    var19_6.coverLoadingLayer.c();
                }
                var19_6.coverLoadingLayer.setCoverListener((y) new r(this, var24_14));
                return var2_2;
            }
            case 1: {
                if (this.d != false) return var2_2;
                var17_19 = new HomeShelfAdapter$AdHolder(var2_2);
                var18_20 = var4_4.getAdvert();
                var17_19.title.setText(var18_20.getTitle());
                var17_19.desc.setText(var18_20.getDesc());
                var17_19.flag.setType(var18_20.getFlagType());
                var17_19.cover.setImageUrl(var18_20.getFullImg());
                var17_19.cover.setDrawingCacheEnabled(true);
                n.a(var18_20, var2_2);
                return var2_2;
            }
            case 2: {
                var13_21 = new HomeShelfAdapter$TxtHolder(var2_2);
                var14_22 = var4_4.getTxt();
                var13_21.title.setText(var14_22.getName());
                var13_21.desc.setText("\u9605\u8bfb\u8fdb\u5ea6 : " + var14_22.getReadableProgress());
                var15_23 = var14_22.isTop();
                var16_24 = 0;
                if (!var15_23) {
                    var16_24 = 8;
                }
                var13_21.top.setVisibility(var16_24);
                this.a(var1_1, var13_21.check);
                return var2_2;
            }
            case 3: {
                if (this.d != false) return var2_2;
                var11_25 = new HomeShelfAdapter$FeedHolder(var2_2);
                var12_26 = var4_4.getBookFeed();
                var11_25.title.setText(var12_26.getTitle());
                if (var12_26.isFat()) {
                    var11_25.flag.setType(4);
                    return var2_2;
                }
                var11_25.flag.setType(0);
                return var2_2;
            }
            case 4:
        }
        var6_27 = new HomeShelfAdapter$AlbumHolder(var2_2);
        var7_28 = var4_4.getAlbum();
        var6_27.cover.setImageUrl(var7_28.getImgUrl(), 2130837766);
        var6_27.title.setText(var7_28.getName());
        var6_27.desc.setText(t.a((long) var7_28.getLastUpdate()) + "\t\t" + var7_28.getDesc());
        if (var7_28.isUpdateReaded() || this.d) {
            var6_27.flag.setType(0);
        } else {
            var6_27.flag.setType(3);
        }
        this.a(var1_1, var6_27.check);
        var8_29 = var6_27.top;
        var9_30 = var7_28.isTop();
        var10_31 = 0;
        if (!var9_30) {
            var10_31 = 8;
        }
        var8_29.setVisibility(var10_31);
        return var2_2;
    }

    @Override
    public int getViewTypeCount() {
        return 5;
    }
}
