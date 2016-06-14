package com.clilystudio.netbook.adapter;

import android.app.Activity;
import android.support.design.widget.am;
import android.view.View;

import com.clilystudio.netbook.db.RetweenRecord;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Tweet;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.util.e;

final class L implements View.OnClickListener {
    private /* synthetic */ Tweet a;
    private /* synthetic */ R b;
    private /* synthetic */ G c;

    L(G g, Tweet tweet, R r) {
        this.c = g;
        this.a = tweet;
        this.b = r;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void onClick(View view) {
        Account account = am.e();
        if (account == null) {
            G.a(this.c).startActivity(AuthLoginActivity.a(G.a(this.c)));
            return;
        }
        if (G.a(account, this.a)) {
            String string = this.a.get_id();
            String string2 = this.a.isRetween() ? this.a.getRefTweet().get_id() : string;
            G.a(this.c, this.a, this.b);
            e.a((Activity) ((Activity) G.a(this.c)), (String) "\t\t\u8f6c\u53d1\u6210\u529f\t\t");
            RetweenRecord.save2DB(account.getUser().getId(), string2);
            U u2 = new U(this.c, this.a, this.b);
            Object[] arrobject = new String[]{am.e().getToken(), string2};
            u2.execute(arrobject);
            return;
        }
        String string = G.a(this.c).getString(2131034472);
        String string3 = G.a(this.a, account) && !this.a.isRetween() ? G.a(this.c).getString(2131034423) : string;
        e.a((Activity) ((Activity) G.a(this.c)), (String) ("\t\t" + string3 + "\t\t"));
    }
}
