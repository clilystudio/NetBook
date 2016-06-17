package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;

import android.text.TextUtils;
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
        this.p = new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                int n = (Integer) v.getTag();
                AddVoteItemActivity.a(AddVoteItemActivity.this, AddVoteItemActivity.d(AddVoteItemActivity.this)[n], n);
            }
        };
        this.q = new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                int n = (Integer) v.getTag();
                AddVoteItemActivity.a(AddVoteItemActivity.this, n);
            }
        };
    }

    static /* synthetic */ void a(AddVoteItemActivity addVoteItemActivity) {
        if (addVoteItemActivity.i < 7) {
            addVoteItemActivity.b[addVoteItemActivity.i].setVisibility(View.VISIBLE);
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
        var0.b[-1 + var0.i].setVisibility(View.GONE);
        var0.i = -1 + var0.i;
    }

    static /* synthetic */ void a(AddVoteItemActivity addVoteItemActivity, View view) {
        ((InputMethodManager) addVoteItemActivity.getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    static /* synthetic */ void a(final AddVoteItemActivity addVoteItemActivity, final TextView textView, final int n) {
        h h2 = new h(addVoteItemActivity);
        View view = LayoutInflater.from(addVoteItemActivity).inflate(R.layout.dialog_edit_text, null);
        final EditText editText = (EditText) view.findViewById(R.id.dialog_edit_content);
        editText.setText("");
        h2.d = "\u6295\u7968\u9879";
        h2.a(R.string.ok, null);
        h2.b(R.string.cancel, (DialogInterface.OnClickListener) new U(addVoteItemActivity, editText));
        final AlertDialog alertDialog = h2.a(view).b();
        Button button = (Button) alertDialog.findViewById(16908313);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                AddVoteItemActivity.a(addVoteItemActivity, editText);
                String string = editText.getText().toString();
                if (!com.clilystudio.netbook.hpay100.a.a.Q(string)) {
                    if (AddVoteItemActivity.a(addVoteItemActivity, string)) {
                        com.clilystudio.netbook.util.e.a(addVoteItemActivity, "该投票项已经存在");
                    } else {
                        textView.setText(string);
                        AddVoteItemActivity.h(addVoteItemActivity)[n] = string;
                    }
                }
                alertDialog.dismiss();
            }
        });
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
    static /* synthetic */ void c(final AddVoteItemActivity addVoteItemActivity) {
        h h2 = new h(addVoteItemActivity);
        View view = LayoutInflater.from(addVoteItemActivity).inflate(R.layout.dialog_waring_text, null);
        TextView textView = (TextView) view.findViewById(R.id.waring_content);
        if (addVoteItemActivity.a == 3) {
            textView.setText(R.string.waring_dialog_topic_girl);
        } else {
            textView.setText(R.string.waring_dialog_topic);
        }
        h2.d = "\u53d1\u5e03";
        h2.a(R.string.vote_ok, null);
        h2.b(R.string.cancel, (DialogInterface.OnClickListener) new X(addVoteItemActivity));
        final AlertDialog alertDialog = h2.a(view).b();
        ((Button) alertDialog.findViewById(16908313)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                alertDialog.dismiss();
                String string = TextUtils.join((CharSequence) ",", AddVoteItemActivity.i(addVoteItemActivity).toArray());
                Z z = new Z(addVoteItemActivity, addVoteItemActivity, R.string.post_publish_loading);
                String[] arrstring = new String[]{AddVoteItemActivity.j(addVoteItemActivity).getToken(), AddVoteItemActivity.k(addVoteItemActivity), AddVoteItemActivity.l(addVoteItemActivity).trim(), AddVoteItemActivity.m(addVoteItemActivity).trim(), string};
                z.b(arrstring);
            }
        });
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
        this.setContentView(R.layout.activity_add_vote_item);
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
        int[] var4_3 = new int[]{R.id.add_vote_item_layout1, R.id.add_vote_item_layout2, R.id.add_vote_item_layout3, R.id.add_vote_item_layout4, R.id.add_vote_item_layout5, R.id.add_vote_item_layout6, R.id.add_vote_item_layout7};
        int[] var5_4 = new int[]{R.id.add_vote_item_edit_1, R.id.add_vote_item_edit_2, R.id.add_vote_item_edit_3, R.id.add_vote_item_edit_4, R.id.add_vote_item_edit_5, R.id.add_vote_item_edit_6, R.id.add_vote_item_edit_7};
        int[] var6_5 = new int[]{R.id.add_vote_item_del_3, R.id.add_vote_item_del_4, R.id.add_vote_item_del_5, R.id.add_vote_item_del_6, R.id.add_vote_item_del_7};
        for (int var7_6 = 0; var7_6 < 7; ++var7_6) {
            this.b[var7_6] = (RelativeLayout) this.findViewById(var4_3[var7_6]);
            this.b[var7_6].setTag(var7_6);
            this.b[var7_6].setOnClickListener(this.p);
            this.e[var7_6] = (TextView) this.findViewById(var5_4[var7_6]);
        }
        for (int var8_7 = 0; var8_7 < 5; ++var8_7) {
            var16_8 = var8_7 + 3;
            this.c[var8_7] = (ImageView) this.findViewById(var6_5[var8_7]);
            this.c[var8_7].setTag(var16_8);
            this.c[var8_7].setOnClickListener(this.q);
        }
        View var9_9 = this.findViewById(R.id.add_vote_item_add_btn);
        View var10_10 = this.findViewById(R.id.add_vote_item_ok_btn);
        var9_9.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                AddVoteItemActivity.a(AddVoteItemActivity.this);
            }
        });
        var10_10.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (AddVoteItemActivity.b(AddVoteItemActivity.this)) {
                    AddVoteItemActivity.c(AddVoteItemActivity.this);
                }
            }
        });
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
                    this.b[var14_13].setVisibility(View.VISIBLE);
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
