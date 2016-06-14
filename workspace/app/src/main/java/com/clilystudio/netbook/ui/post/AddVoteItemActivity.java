package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.am;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;

import java.util.ArrayList;
import java.util.List;

public class AddVoteItemActivity extends BaseActivity {
    private int a = 0;
    private RelativeLayout[] b = new RelativeLayout[7];
    private ImageView[] c = new ImageView[5];
    private TextView[] e = new TextView[7];
    private String[] f = null;
    private String[] g = new String[7];
    private List<String> h = new ArrayList<String>();
    private int i = 0;
    private String j;
    private String k;
    private String l;
    private String m;
    private boolean n;
    private Account o = null;
    private View.OnClickListener p;
    private View.OnClickListener q;

    public AddVoteItemActivity() {
        this.p = new S(this);
        this.q = new T(this);
    }

    static /* synthetic */ void a(AddVoteItemActivity addVoteItemActivity) {
        if (addVoteItemActivity.i < 7) {
            addVoteItemActivity.b[addVoteItemActivity.i].setVisibility(0);
            addVoteItemActivity.i = 1 + addVoteItemActivity.i;
            return;
        }
        e.a((Activity) addVoteItemActivity, (String) "\u4e0d\u80fd\u518d\u6dfb\u52a0\u6295\u7968\u9879\u5566");
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    static /* synthetic */ void a(AddVoteItemActivity var0, int var1_1) {
        switch (var0.i) {
            case 3: {
                var0.e[2].setText("");
                var0.g[2] = "";
                **break;
            }
            case 4: {
                if (3 == var1_1) {
                    var0.e[2].setText(var0.e[3].getText());
                    var0.g[2] = var0.g[3];
                }
                var0.e[3].setText("");
                var0.g[3] = "";
                **break;
            }
            case 5: {
                if (3 == var1_1) {
                    var0.e[2].setText(var0.e[3].getText());
                    var0.e[3].setText(var0.e[4].getText());
                    var0.g[2] = var0.g[3];
                    var0.g[3] = var0.g[4];
                } else if (4 == var1_1) {
                    var0.e[3].setText(var0.e[4].getText());
                    var0.g[3] = var0.g[4];
                }
                var0.e[4].setText("");
                var0.g[4] = "";
                **break;
            }
            case 6: {
                if (3 == var1_1) {
                    var0.e[2].setText(var0.e[3].getText());
                    var0.e[3].setText(var0.e[4].getText());
                    var0.e[4].setText(var0.e[5].getText());
                    var0.g[2] = var0.g[3];
                    var0.g[3] = var0.g[4];
                    var0.g[4] = var0.g[5];
                } else if (4 == var1_1) {
                    var0.e[3].setText(var0.e[4].getText());
                    var0.e[4].setText(var0.e[5].getText());
                    var0.g[3] = var0.g[4];
                    var0.g[4] = var0.g[5];
                } else if (5 == var1_1) {
                    var0.e[4].setText(var0.e[5].getText());
                    var0.g[4] = var0.g[5];
                }
                var0.e[5].setText("");
                var0.g[5] = "";
            }
            lbl46:
            // 5 sources:
            default:
            {
                **GOTO lbl78
            }
            case 7:
        }
        if (3 == var1_1) {
            var0.e[2].setText(var0.e[3].getText());
            var0.e[3].setText(var0.e[4].getText());
            var0.e[4].setText(var0.e[5].getText());
            var0.e[5].setText(var0.e[6].getText());
            var0.g[2] = var0.g[3];
            var0.g[3] = var0.g[4];
            var0.g[4] = var0.g[5];
            var0.g[5] = var0.g[6];
        } else if (4 == var1_1) {
            var0.e[3].setText(var0.e[4].getText());
            var0.e[4].setText(var0.e[5].getText());
            var0.e[5].setText(var0.e[6].getText());
            var0.g[3] = var0.g[4];
            var0.g[4] = var0.g[5];
            var0.g[5] = var0.g[6];
        } else if (5 == var1_1) {
            var0.e[4].setText(var0.e[5].getText());
            var0.e[5].setText(var0.e[6].getText());
            var0.g[4] = var0.g[5];
            var0.g[5] = var0.g[6];
        } else if (6 == var1_1) {
            var0.e[5].setText(var0.e[6].getText());
            var0.g[5] = var0.g[6];
        }
        var0.e[6].setText("");
        var0.g[6] = "";
        lbl78:
        // 2 sources:
        var0.b[-1 + var0.i].setVisibility(8);
        var0.i = -1 + var0.i;
    }

    static /* synthetic */ void a(AddVoteItemActivity addVoteItemActivity, View view) {
        ((InputMethodManager) addVoteItemActivity.getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    static /* synthetic */ void a(AddVoteItemActivity addVoteItemActivity, TextView textView, int n) {
        h h2 = new h(addVoteItemActivity);
        View view = LayoutInflater.from(addVoteItemActivity).inflate(2130903189, null);
        EditText editText = (EditText) view.findViewById(2131493392);
        editText.setText("");
        h2.d = "\u6295\u7968\u9879";
        h2.a(2131034424, null);
        h2.b(2131034129, (DialogInterface.OnClickListener) new U(addVoteItemActivity, editText));
        AlertDialog alertDialog = h2.a(view).b();
        Button button = (Button) alertDialog.findViewById(16908313);
        button.setOnClickListener(new V(addVoteItemActivity, editText, textView, n, alertDialog));
        if (com.clilystudio.netbook.hpay100.a.a.Q(editText.getText().toString())) {
            button.setEnabled(false);
        }
        editText.addTextChangedListener(new W(addVoteItemActivity, editText, button));
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static /* synthetic */ boolean a(AddVoteItemActivity addVoteItemActivity, String string) {
        int n = 0;
        do {
            boolean bl = false;
            if (n >= 7) return bl;
            if (addVoteItemActivity.g[n].equals(string)) {
                return true;
            }
            ++n;
        } while (true);
    }

    static /* synthetic */ boolean b(AddVoteItemActivity addVoteItemActivity) {
        addVoteItemActivity.h.clear();
        for (int j = 0; j < 7; ++j) {
            if ("".equals(addVoteItemActivity.g[j])) continue;
            addVoteItemActivity.h.add(addVoteItemActivity.g[j]);
        }
        if (addVoteItemActivity.h.size() < 2) {
            e.a((Activity) addVoteItemActivity, (String) "\u81f3\u5c11\u9700\u89812\u4e2a\u6295\u7968\u9879");
            return false;
        }
        if (addVoteItemActivity.o == null) {
            Account account = am.e();
            if (account == null) {
                e.a((Activity) addVoteItemActivity, (String) "\u767b\u5f55\u540e\u518d\u64cd\u4f5c");
                addVoteItemActivity.startActivity(AuthLoginActivity.a(addVoteItemActivity));
                return false;
            }
            addVoteItemActivity.o = account;
        }
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void c(AddVoteItemActivity addVoteItemActivity) {
        h h2 = new h(addVoteItemActivity);
        View view = LayoutInflater.from(addVoteItemActivity).inflate(2130903202, null);
        TextView textView = (TextView) view.findViewById(2131493422);
        if (addVoteItemActivity.a == 3) {
            textView.setText(2131034589);
        } else {
            textView.setText(2131034588);
        }
        h2.d = "\u53d1\u5e03";
        h2.a(2131034583, null);
        h2.b(2131034129, (DialogInterface.OnClickListener) new X(addVoteItemActivity));
        AlertDialog alertDialog = h2.a(view).b();
        ((Button) alertDialog.findViewById(16908313)).setOnClickListener(new Y(addVoteItemActivity, alertDialog));
    }

    static /* synthetic */ TextView[] d(AddVoteItemActivity addVoteItemActivity) {
        return addVoteItemActivity.e;
    }

    static /* synthetic */ int e(AddVoteItemActivity addVoteItemActivity) {
        return addVoteItemActivity.a;
    }

    static /* synthetic */ void f(AddVoteItemActivity addVoteItemActivity) {
        addVoteItemActivity.startActivity(BookPostTabActivity.a(addVoteItemActivity, addVoteItemActivity.j, addVoteItemActivity.k, addVoteItemActivity.n));
    }

    static /* synthetic */ void g(AddVoteItemActivity addVoteItemActivity) {
        Intent intent = new Intent(addVoteItemActivity, CommonPostListActivity.class);
        intent.putExtra("book_post_list_bookId", addVoteItemActivity.j);
        intent.putExtra("book_post_list_bookTitle", addVoteItemActivity.k);
        intent.putExtra("book_post_list_from_reader", addVoteItemActivity.n);
        addVoteItemActivity.startActivity(intent);
    }

    static /* synthetic */ String[] h(AddVoteItemActivity addVoteItemActivity) {
        return addVoteItemActivity.g;
    }

    static /* synthetic */ List i(AddVoteItemActivity addVoteItemActivity) {
        return addVoteItemActivity.h;
    }

    static /* synthetic */ Account j(AddVoteItemActivity addVoteItemActivity) {
        return addVoteItemActivity.o;
    }

    static /* synthetic */ String k(AddVoteItemActivity addVoteItemActivity) {
        return addVoteItemActivity.j;
    }

    static /* synthetic */ String l(AddVoteItemActivity addVoteItemActivity) {
        return addVoteItemActivity.l;
    }

    static /* synthetic */ String m(AddVoteItemActivity addVoteItemActivity) {
        return addVoteItemActivity.m;
    }

    @Override
    public void onBackPressed() {
        Intent intent = this.getIntent();
        intent.putExtra("contentArray", this.g);
        this.setResult(-1, intent);
        this.finish();
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public void onCreate(Bundle var1_1) {
        super.onCreate(var1_1);
        this.setContentView(2130903079);
        com.clilystudio.netbook.a.a();
        com.clilystudio.netbook.a.a(this);
        var3_2 = this.getIntent().getStringExtra("block");
        if ("ramble".equals(var3_2)) {
            this.a = 1;
        } else if ("android-feedback".equals(var3_2)) {
            this.a = 2;
        } else if ("girl".equals(var3_2)) {
            this.a = 3;
        }
        this.f = this.getIntent().getStringArrayExtra("lastContentArray");
        this.j = this.getIntent().getStringExtra("book_post_list_bookId");
        this.k = this.getIntent().getStringExtra("book_post_list_bookTitle");
        this.l = this.getIntent().getStringExtra("add_vote_title");
        this.m = this.getIntent().getStringExtra("add_vote_desc");
        this.n = this.getIntent().getBooleanExtra("book_post_list_from_reader", false);
        this.b("\u7f16\u8f91\u6295\u7968\u9879");
        var4_3 = new int[]{2131492890, 2131492891, 2131492892, 2131492893, 2131492894, 2131492895, 2131492896};
        var5_4 = new int[]{2131492876, 2131492877, 2131492878, 2131492879, 2131492880, 2131492881, 2131492882};
        var6_5 = new int[]{2131492871, 2131492872, 2131492873, 2131492874, 2131492875};
        for (var7_6 = 0; var7_6 < 7; ++var7_6) {
            this.b[var7_6] = (RelativeLayout) this.findViewById(var4_3[var7_6]);
            this.b[var7_6].setTag(var7_6);
            this.b[var7_6].setOnClickListener(this.p);
            this.e[var7_6] = (TextView) this.findViewById(var5_4[var7_6]);
        }
        for (var8_7 = 0; var8_7 < 5; ++var8_7) {
            var16_8 = var8_7 + 3;
            this.c[var8_7] = (ImageView) this.findViewById(var6_5[var8_7]);
            this.c[var8_7].setTag(var16_8);
            this.c[var8_7].setOnClickListener(this.q);
        }
        var9_9 = this.findViewById(2131492868);
        var10_10 = this.findViewById(2131492897);
        var9_9.setOnClickListener(new Q(this));
        var10_10.setOnClickListener(new R(this));
        if (this.f == null) {
            this.i = 2;
            var11_15 = 0;
            while (var11_15 < 7) {
                this.g[var11_15] = "";
                ++var11_15;
            }
            return;
        }
        this.g = this.f;
        var12_11 = 6;
        do {
            if (var12_11 <= 0)**GOTO lbl54
            if (!"".equals(this.g[var12_11])) {
                this.i = var12_11 + 1;
                lbl54:
                // 2 sources:
                if (this.i < 2) {
                    this.i = 2;
                }
                var13_12 = this.i;
                var14_13 = 0;
                while (var14_13 < var13_12) {
                    this.b[var14_13].setVisibility(0);
                    var15_14 = this.g[var14_13];
                    this.e[var14_13].setText(var15_14);
                    ++var14_13;
                }
                return;
            }
            --var12_11;
        } while (true);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            default: {
                return super.onOptionsItemSelected(menuItem);
            }
            case 16908332:
        }
        this.onBackPressed();
        return true;
    }
}
