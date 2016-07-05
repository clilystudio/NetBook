    v1 = 0x0;
    v8 = 0x42;
    v7 = 0x11;
    v4 = 0x1;
    v3 = 0x0;
    v2 = this.findFocus();
	v0 = v1;
    if (v2 != p0 && v2 != 0) {
		v0 = v2.getParent();
		instance-of v5, v0, Landroid/view/ViewGroup;
		v01 = v3;
		while (v0 instance-of ViewGroup) {
			if (v0 == p0) {
				v0 = v4;
				break;
			}
			v0 = v0.getParent();
		}
		v0 = v01;
		if (v0 != 0) {
			v0 = v2;
		} else {
			v5 = new StringBuilder();
			v5.<init>();
			v0 = v2.getClass();
			v0 = v0.getSimpleName();
			v5.append(v0);
			v0 = v2.getParent();
			while (v0 instance-of ViewGroup) {
				v2 = " => ";
				v2 = v5.append(v2);
				v6 = v0.getClass();
				v6 = v6.getSimpleName();
				v2.append(v6);
				v0 = v0.getParent();
			}
			v0 = "ViewPager";
			v2 = new StringBuilder();
			v6 = "arrowScroll tried to find focus based on non-child current focused view ";
			v2.<init>(v6);
			v5 = v5.toString();
			v2 = v2.append(v5);
			v2 = v2.toString();
			Landroid/util/Log.e(v0, v2);
		}
	}
    v1 = invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;
    v1 = v1.findNextFocus(p0, v0, p1);
    if (v1 == 0 || v1 == v0) {
		if (p1 != v7 && p1 != v4) {
			if (p1 != v8 && p1 != 2) {
				v0 = v3;
			} else {
				v0 = this.j();
			}
		} else {
			v0 = this.i();
		}
    } else if (p1 != v7) {
		if (p1 == v8) {
			v2 = this.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTempRect;
			v2 = this.a(v2, v1);
			v2 = v2.Landroid/graphics/Rect;->left;
			v3 = this.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTempRect;
			v3 = this.a(v3, v0);
			v3 = v3.Landroid/graphics/Rect;->left;
			if (v0 == 0 || v2 > v3) {
				v0 = v1.requestFocus();
			} else {
				v0 = this.j();
			}
		} else {
			v0 = v3;
		}
    } else {
		v2 = this.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTempRect;
		v2 = this.a(v2, v1);
		v2 = v2.Landroid/graphics/Rect;->left;
		v3 = this.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTempRect;
		v3 = this.a(v3, v0);
		v3 = v3.Landroid/graphics/Rect;->left;
		if (v0 == 0 || v2 < v3) {
			v0 = v1.requestFocus();
		} else {
			v0 = this.i();
		}
	}
    if (v0 != 0) {
		v1 = Landroid/view/SoundEffectConstants.getContantForFocusDirection(p1);
		this.playSoundEffect(v1);
    }
    return v0

	
	        block8:
        {
            var2_2 = this.findFocus();
            if (var2_2 != this)**GOTO lbl5
            var3_3 = null;
            **GOTO lbl8
            lbl5:
            // 1 sources:
            if (var2_2 == null)**GOTO lbl50
            var10_8 = var2_2.getParent();
            **GOTO lbl31
            lbl8:
            // 3 sources:
            do {
                var4_4 = FocusFinder.getInstance().findNextFocus(this, var3_3, var1_1);
                if (var4_4 == null || var4_4 == var3_3)**GOTO lbl21
                if (var1_1 != 17)**GOTO lbl16
                var8_5 = this.a((Rect) this.mTempRect, (View) var4_4).left;
                var9_6 = this.a((Rect) this.mTempRect, (View) var3_3).left;
                var5_7 = var3_3 != null && var8_5 >= var9_6 ? this.i() : var4_4.requestFocus();
                **GOTO lbl28
                lbl16:
                // 1 sources:
                if (var1_1 != 66)**GOTO lbl -1000
                var6_12 = this.a((Rect) this.mTempRect, (View) var4_4).left;
                var7_13 = this.a((Rect) this.mTempRect, (View) var3_3).left;
                var5_7 = var3_3 != null && var6_12 <= var7_13 ? this.j() : var4_4.requestFocus();
                **GOTO lbl28
                lbl21:
                // 1 sources:
                if (var1_1 == 17 || var1_1 == 1) {
                    var5_7 = this.i();
                } else if (var1_1 == 66 || var1_1 == 2) {
                    var5_7 = this.j();
                } else lbl - 1000: // 2 sources:
                {
                    var5_7 = false;
                }
                lbl28:
                // 5 sources:
                if (var5_7 == false) return var5_7;
                this.playSoundEffect(SoundEffectConstants.getContantForFocusDirection(var1_1));
                return var5_7;
                break;
            } while (true);
            lbl31:
            // 2 sources:
            while (var10_8 instanceof ViewGroup) {
                if (var10_8 == this) {
                    var11_9 = true;
                    break block8;
                }
                var10_8 = var10_8.getParent();
            }
            var11_9 = false;
        }
        if (var11_9)**GOTO lbl50
        var12_10 = new StringBuilder();
        var12_10.append(var2_2.getClass().getSimpleName());
        var14_11 = var2_2.getParent();
        while (var14_11 instanceof ViewGroup) {
            var12_10.append(" => ").append(var14_11.getClass().getSimpleName());
            var14_11 = var14_11.getParent();
        }
        Log.e("ViewPager", "arrowScroll tried to find focus based on non-child current focused view " + var12_10.toString());
        var3_3 = null;
        **GOTO lbl8
        lbl50:
        // 2 sources:
        var3_3 = var2_2;
        **while (true)
