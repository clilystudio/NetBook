    v1 = 0x0;
    v8 = 0x42;
    v7 = 0x11;
    v4 = 0x1;
    v3 = 0x0;
    v2 = p0.findFocus();
    if (v2 != p0) {
		if (v2 != 0) {
			v0 = v2.getParent();
			:goto_2
			instance-of v5, v0, Landroid/view/ViewGroup;
			if (v0 instance-of ViewGroup) {
				v0 = v3;
				goto/16 :goto_3
			}
			if (v0 != p0) {
				v0 = v0.getParent();
				goto :goto_2
			}
			v0 = v4;
			:goto_3
			if (v0 != 0) {
				v0 = v2;
				goto/16 :goto_0
			}
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
			v0 = v1;
		} else {
			v0 = v2;
		}
    } else {
		v0 = v1;
	}
    :goto_0
    v1 = invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;
    v1 = v1.findNextFocus(p0, v0, p1);
    if (v1 == 0 || v1 == v0) {
		if (p1 != v7 && p1 != v4) {
			if (p1 != v8 && p1 != 2) {
				v0 = v3;
			} else {
				v0 = p0.j();
			}
		} else {
			v0 = p0.i();
		}
    } else if (p1 != v7) {
		if (p1 == v8) {
			v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTempRect;
			v2 = p0.a(v2, v1);
			v2 = v2.Landroid/graphics/Rect;->left;
			v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTempRect;
			v3 = p0.a(v3, v0);
			v3 = v3.Landroid/graphics/Rect;->left;
			if (v0 == 0 || v2 > v3) {
				v0 = v1.requestFocus();
			} else {
				v0 = p0.j();
			}
		} else {
			v0 = v3;
		}
    } else {
		v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTempRect;
		v2 = p0.a(v2, v1);
		v2 = v2.Landroid/graphics/Rect;->left;
		v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTempRect;
		v3 = p0.a(v3, v0);
		v3 = v3.Landroid/graphics/Rect;->left;
		if (v0 == 0 || v2 < v3) {
			v0 = v1.requestFocus();
		} else {
			v0 = p0.i();
		}
	}
    if (v0 != 0) {
		v1 = Landroid/view/SoundEffectConstants.getContantForFocusDirection(p1);
		p0.playSoundEffect(v1);
    }
    return v0
