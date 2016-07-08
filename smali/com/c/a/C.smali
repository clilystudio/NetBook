.class final Lcom/c/a/C;
.super Landroid/os/Handler;
.source "SourceFile"
# direct methods
.method private constructor <init>()V
    .locals 0
    .prologue
    p0.<init>();
    return;
.end method
.method synthetic constructor <init>(B)V
    .locals 0
    .prologue
    p0.<init>();
    return;
.end method
# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12
    .prologue
    v3 = 0x1;
    v0 = invoke-static {}, Lcom/c/a/w;->h()Ljava/lang/ThreadLocal;
    v0 = v0.get();
    check-cast v0, Ljava/util/ArrayList;
    v1 = invoke-static {}, Lcom/c/a/w;->i()Ljava/lang/ThreadLocal;
    v1 = v1.get();
    check-cast v1, Ljava/util/ArrayList;
    v2 = p1.Landroid/os/Message;->what;
    packed-switch v2, :pswitch_data_0
    :cond_0
    :goto_0
    return;
    :pswitch_0
    v2 = invoke-static {}, Lcom/c/a/w;->j()Ljava/lang/ThreadLocal;
    v2 = v2.get();
    check-cast v2, Ljava/util/ArrayList;
    v4 = v0.size();
    if (v4 > 0) {
//       if-gtz v4, :cond_1
    }
    v4 = v1.size();
    if (v4 <= 0) {
//       if-lez v4, :cond_f
    }
    :cond_1
    v3 = 0x0;
    v5 = v3;
    :cond_2
    :goto_1
    v3 = v2.size();
    if (v3 <= 0) {
//       if-lez v3, :cond_4
    }
    v3 = v2.clone();
    check-cast v3, Ljava/util/ArrayList;
    v2.clear();
    v7 = v3.size();
    v4 = 0x0;
    v6 = v4;
    :goto_2
    if (v6 >= v7) {
//       if-ge v6, v7, :cond_2
    }
    v4 = v3.get(v6);
    check-cast v4, Lcom/c/a/w;
    v8 = Lcom/c/a/w.a(v4);
    v10 = 0x0;
    cmp-long v8, v8, v10
    if (v8 != 0) {
//       if-nez v8, :cond_3
    }
    Lcom/c/a/w.b(v4);
    :goto_3
    v4 = v6 + 0x1;
    v6 = v4;
    goto :goto_2
    :cond_3
    v1.add(v4);
    goto :goto_3
    :pswitch_1
    v5 = v3;
    :cond_4
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J
    move-result-wide v8
    v2 = invoke-static {}, Lcom/c/a/w;->k()Ljava/lang/ThreadLocal;
    v2 = v2.get();
    check-cast v2, Ljava/util/ArrayList;
    v3 = invoke-static {}, Lcom/c/a/w;->l()Ljava/lang/ThreadLocal;
    v3 = v3.get();
    check-cast v3, Ljava/util/ArrayList;
    v7 = v1.size();
    v4 = 0x0;
    v6 = v4;
    :goto_4
    if (v6 >= v7) {
//       if-ge v6, v7, :cond_6
    }
    v4 = v1.get(v6);
    check-cast v4, Lcom/c/a/w;
    v10 = Lcom/c/a/w.a(v4, v8, v9);
    if (v10 == 0) {
//       if-eqz v10, :cond_5
    }
    v2.add(v4);
    :cond_5
    v4 = v6 + 0x1;
    v6 = v4;
    goto :goto_4
    :cond_6
    v7 = v2.size();
    if (v7 <= 0) {
//       if-lez v7, :cond_8
    }
    v4 = 0x0;
    v6 = v4;
    :goto_5
    if (v6 >= v7) {
//       if-ge v6, v7, :cond_7
    }
    v4 = v2.get(v6);
    check-cast v4, Lcom/c/a/w;
    Lcom/c/a/w.b(v4);
    v10 = 0x1;
    Lcom/c/a/w.a(v4, v10);
    v1.remove(v4);
    v4 = v6 + 0x1;
    v6 = v4;
    goto :goto_5
    :cond_7
    v2.clear();
    :cond_8
    v2 = v0.size();
    v4 = 0x0;
    v6 = v4;
    v4 = v2;
    :goto_6
    if (v6 >= v4) {
//       if-ge v6, v4, :cond_b
    }
    v2 = v0.get(v6);
    check-cast v2, Lcom/c/a/w;
    v7 = v2.c(v8, v9);
    if (v7 == 0) {
//       if-eqz v7, :cond_9
    }
    v3.add(v2);
    :cond_9
    v7 = v0.size();
    if (v7 != v4) {
//       if-ne v7, v4, :cond_a
    }
    v2 = v6 + 0x1;
    v6 = v2;
    goto :goto_6
    :cond_a
    v4 = v4 + -0x1;
    v3.remove(v2);
    goto :goto_6
    :cond_b
    v2 = v3.size();
    if (v2 <= 0) {
//       if-lez v2, :cond_d
    }
    v2 = 0x0;
    v4 = v2;
    :goto_7
    v2 = v3.size();
    if (v4 >= v2) {
//       if-ge v4, v2, :cond_c
    }
    v2 = v3.get(v4);
    check-cast v2, Lcom/c/a/w;
    Lcom/c/a/w.c(v2);
    v2 = v4 + 0x1;
    v4 = v2;
    goto :goto_7
    :cond_c
    v3.clear();
    :cond_d
    if (v5 == 0) {
//       if-eqz v5, :cond_0
    }
    v0 = v0.isEmpty();
    if (v0 == 0) {
//       if-eqz v0, :cond_e
    }
    v0 = v1.isEmpty();
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    :cond_e
    v0 = 0x1;
    v2 = 0x0;
    invoke-static {}, Lcom/c/a/w;->m()J
    move-result-wide v4
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J
    move-result-wide v6
    v6 -= v8;
    v4 -= v6;
    v2 = Ljava/lang/Math.max(v2, v3, v4, v5);
    p0.sendEmptyMessageDelayed(v0, v2, v3);
    goto/16 :goto_0
    :cond_f
    v5 = v3;
    goto/16 :goto_1
    nop
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
