package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TableLayout;
import android.widget.TextView;

import com.clilystudio.netbook.model.GameLayoutRoot$ModuleLayout;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class GameMicroItemSection
        extends TableLayout {
    @InjectView(value = 2131493577)
    TableLayout mContainer;
    private boolean a = false;

    public GameMicroItemSection(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public final void a() {
        View view = LayoutInflater.from(this.getContext()).inflate(2130903383, (ViewGroup) this.mContainer, false);
        this.mContainer.addView(view);
    }

    public final void a(int n) {
        for (int i = 0; i < n; ++i) {
            ViewGroup viewGroup = (ViewGroup) LayoutInflater.from(this.getContext()).inflate(2130903384, (ViewGroup) this.mContainer, false);
            this.mContainer.addView(viewGroup);
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public final void a(GameLayoutRoot$ModuleLayout var1_1) {
        ((TextView) this.findViewById(2131493576)).setText(var1_1.getGameGroup().getName());
        var2_2 = var1_1.getGameGroup().getGames();
        var3_3 = Math.min(var2_2.size(), 9);
        var4_4 = 0;
        block0:
        do {
            if (var4_4 < var3_3 && this.mContainer.getChildCount() > var4_4 / 3) {
                var5_5 = var2_2.subList(var4_4, Math.min(var4_4 + 3, var2_2.size()));
                var6_6 = (ViewGroup) this.mContainer.getChildAt(var4_4 / 3);
                if (var5_5 != null && var6_6 != null) {
                    break;
                }
            } else {
                this.requestLayout();
                return;
            }
            do {
                var4_4 += 3;
                continue block0;
                break;
            } while (true);
            break;
        } while (true);
        for (var7_7 = 0; var7_7 < var5_5.size(); ++var7_7) {
            var9_9 = (GameMicroLayoutItemView) var6_6.getChildAt(var7_7);
            var9_9.setVisibility(0);
            var9_9.setHasPlayed(this.a);
            var10_10 = var5_5.get(var7_7);
            var9_9.mTitle.setText(var10_10.getName());
            var9_9.mSubTitle.setVisibility(8);
            if (var9_9.a) {
                var9_9.mAction.setPlayedView();
            } else {
                var9_9.mAction.setH5View();
            }
            var9_9.mImage.setImageUrl(var10_10.getIcon());
            var9_9.mImage.a(var10_10);
            var9_9.setOnClickListener(new P(var9_9, var10_10));
            var9_9.mAction.setOnClickListener(new Q(var9_9, var10_10));
        }
        var8_8 = var5_5.size();
        do {
            if (var8_8 >= 3)**continue;
            var6_6.getChildAt(var8_8).setVisibility(4);
            ++var8_8;
        } while (true);
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.inject(this);
    }

    public void setHasPlayed(boolean bl) {
        this.a = bl;
    }
}
